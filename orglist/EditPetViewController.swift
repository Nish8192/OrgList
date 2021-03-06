//
//  EditPetViewController.swift
//  orglist
//
//  Created by Nishant Aggarwal on 8/28/17.
//  Copyright © 2017 Nishant Aggarwal. All rights reserved.
//

import UIKit



class EditPetViewController: UIViewController {
    
    var selectedAnimal = ""
    var name = ""
    var indexToEdit = -1

    @IBOutlet weak var petName: UITextField!
    
    @IBOutlet weak var dog: UIButton!
    
    @IBOutlet weak var cat: UIButton!
    
    @IBOutlet weak var hamster: UIButton!
    
    @IBOutlet weak var elephant: UIButton!
    
    @IBOutlet weak var cheetah: UIButton!
    
    
    
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
    
    
    @IBAction func saveChanges(_ sender: Any) {
        
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
    
    override func viewDidAppear(_ animated: Bool) {
        petName.text = name
        if selectedAnimal == "pup1.jpeg" {
            dog.layer.borderWidth = 2
            dog.layer.backgroundColor = UIColor.red.cgColor
        }
        if selectedAnimal == "cat.jpg" {
            cat.layer.borderWidth = 2
            cat.layer.backgroundColor = UIColor.red.cgColor
        }
        if selectedAnimal == "cheetah.jpg" {
            cheetah.layer.borderWidth = 2
            cheetah.layer.backgroundColor = UIColor.red.cgColor
        }
        if selectedAnimal == "hamster.jpg" {
            hamster.layer.borderWidth = 2
            hamster.layer.backgroundColor = UIColor.red.cgColor
        }
        if selectedAnimal == "elephant.jpeg" {
            elephant.layer.borderWidth = 2
            elephant.layer.backgroundColor = UIColor.red.cgColor
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func deselectAll(){
        dog.layer.borderWidth = 0
        cat.layer.borderWidth = 0
        hamster.layer.borderWidth = 0
        cheetah.layer.borderWidth = 0
        elephant.layer.borderWidth = 0
    }

}
