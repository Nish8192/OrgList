//
//  OrgListController.swift
//  orglist
//
//  Created by Nishant Aggarwal on 8/25/17.
//  Copyright © 2017 Nishant Aggarwal. All rights reserved.
//

import UIKit


//var items = ["Fluffy"]
//
//var pictures = ["pup1.jpeg"]

class OrgListController: UITableViewController, AddingPetDelegate {
    
    var pets: [Pet] = []
    
    func getPets() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
        pets = try context.fetch(Pet.fetchRequest())
        } catch {
            print ("Getting data failed")
        }
    }
    
    
    @IBOutlet var petList: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

     

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
    }
    
    func userAddPet(newPetName: String, newPetPicture: String){
//        items.append(newPetName)
//        pictures.append(newPetPicture)
//        petList.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let pet = pets[indexPath.row]
            context.delete(pet)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            getPets()
            petList.reloadData()
        } else {
            getPets()
            petList.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNewPet" {
            let NewPet: NewPetViewController = segue.destination as! NewPetViewController
            NewPet.petListDelegate = self
        }
    }
    

    override func viewWillAppear(_ animated: Bool) {
        getPets()
        petList.reloadData()
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (pets.count)
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OrgListTableViewCell
        
        cell.myImage.image = UIImage(named: pets[indexPath.row].picture!)
        cell.myLabel.text = pets[indexPath.row].name
        
        return (cell)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showAlert(indexPath.row)
        
//        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let editView = Storyboard.instantiateViewController(withIdentifier: "EditPet") as! EditPetViewController
//        
//        editView.indexToEdit = indexPath.row
//        editView.selectedAnimal = pictures[indexPath.row]
//        editView.name = items[indexPath.row]
//        self.navigationController?.pushViewController(editView, animated: true)
    }
    
    func showAlert(_ myIndex: Int){
//        let alert = UIAlertController(title: "I AM", message: items[myIndex], preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Close", style: .default, handler: { (action) in
//            alert.dismiss(animated: true, completion: nil)
//        }))
//        self.present(alert, animated: true, completion: nil)
    }

}
