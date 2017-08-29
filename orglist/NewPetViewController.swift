//
//  NewPetViewController.swift
//  orglist
//
//  Created by Nishant Aggarwal on 8/28/17.
//  Copyright © 2017 Nishant Aggarwal. All rights reserved.
//

import UIKit

protocol AddingPetDelegate {
    func userAddPet(newPetName: String, newPetPicture: String)
}

class NewPetViewController: UIViewController {
    
    var petListDelegate: AddingPetDelegate? = nil
    
    func showNoPicAlert(){
        let alert = UIAlertController(title: "ERROR", message: "Please select a picture!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Close", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func showNoNameAlert(){
        let alert = UIAlertController(title: "ERROR", message: "Please enter a name!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Close", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }

    var selectedAnimal = ""

    @IBOutlet weak var petName: UITextField!
    
    @IBOutlet weak var dog: UIButton!
    
    @IBOutlet weak var cat: UIButton!
    
    @IBOutlet weak var hamster: UIButton!
    
    @IBOutlet weak var cheetah: UIButton!
    
    
    @IBOutlet weak var elephant: UIButton!
    
    
    @IBAction func dogSelect(_ sender: Any) {
        deselectAll()
        dog.layer.borderWidth = 2
        dog.layer.backgroundColor = UIColor.red.cgColor
        selectedAnimal = "pup1.jpeg"
        
    }
    
    @IBAction func catSelect(_ sender: Any) {
        deselectAll()
        cat.layer.borderWidth = 2
        cat.layer.borderColor = UIColor.red.cgColor
        selectedAnimal = "cat.jpg"
    }
    
    @IBAction func hamsterSelect(_ sender: Any) {
        deselectAll()
        hamster.layer.borderWidth = 2
        hamster.layer.borderColor = UIColor.red.cgColor
        selectedAnimal = "hamster.jpg"
    }
    
    @IBAction func cheetahSelect(_ sender: Any) {
        deselectAll()
        cheetah.layer.borderWidth = 2
        cheetah.layer.borderColor = UIColor.red.cgColor
        selectedAnimal = "cheetah.jpg"
    }
    
    
    @IBAction func elephantSelect(_ sender: Any) {
        deselectAll()
        elephant.layer.borderWidth = 2
        elephant.layer.borderColor = UIColor.red.cgColor
        selectedAnimal = "elephant.jpeg"
    }
    
    @IBAction func savePet(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let newPet = Pet(context: context)
        
        if petListDelegate != nil {
            if petName.text != "" {
                if selectedAnimal != "" {
//                    let newPetName = petName.text!
//                    petListDelegate?.userAddPet(newPetName: newPetName, newPetPicture: selectedAnimal)
//                    self.navigationController?.popViewController(animated: true)
                    newPet.name = petName.text!
                    newPet.picture = selectedAnimal
                    
                    // Save data to Core Data
                    
                    (UIApplication.shared.delegate as! AppDelegate).saveContext()
                    
                    self.navigationController!.popViewController(animated: true)
                    
                } else {
                    showNoPicAlert()
                }
            } else {
                showNoNameAlert()
            }
        }
    }
    
    
//    override func shouldPerformSegue(withIdentifier identifier: String?, sender: Any?) -> Bool {
//        if let ident = identifier {
//            if ident == "savePet" {
//                if(petName.text == ""){
//                    showNoNameAlert()
//                    return false;
//                }
//                if(selectedAnimal == ""){
//                    showNoPicAlert()
//                    return false;
//                }
//            }
//        }
//        return true
//    }
    
    
    
    
    
    func deselectAll(){
        dog.layer.borderWidth = 0
        cat.layer.borderWidth = 0
        hamster.layer.borderWidth = 0
        cheetah.layer.borderWidth = 0
        elephant.layer.borderWidth = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dog.layer.cornerRadius = dog.frame.size.width/2
        dog.clipsToBounds = true
        
        cat.layer.cornerRadius = cat.frame.size.width/2
        cat.clipsToBounds = true
        
        hamster.layer.cornerRadius = hamster.frame.size.width/2
        hamster.clipsToBounds = true
        
        cheetah.layer.cornerRadius = cheetah.frame.size.width/2
        cheetah.clipsToBounds = true
        
        elephant.layer.cornerRadius = elephant.frame.size.width/2
        elephant.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
