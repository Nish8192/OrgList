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
    
    var items = ["Pup1"]
    
    var pictures = ["pup1.jpeg"]
    
    @IBOutlet var petList: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

     

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
    }
    
    func userAddPet(newPetName: String, newPetPicture: String){
        items.append(newPetName)
        pictures.append(newPetPicture)
        print ("IN PROTOCAL")
        print (items)
        print(pictures)
        petList.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            items.remove(at: indexPath.row)
            pictures.remove(at: indexPath.row)
            petList.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNewPet" {
            let NewPet: NewPetViewController = segue.destination as! NewPetViewController
            NewPet.petListDelegate = self
        }
    }
    

    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (items.count)
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OrgListTableViewCell
        
        cell.myImage.image = UIImage(named: pictures[indexPath.row])
        cell.myLabel.text = items[indexPath.row]
        
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
        let alert = UIAlertController(title: "I AM", message: items[myIndex], preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Close", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }

}
