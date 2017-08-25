//
//  OrgListController.swift
//  orglist
//
//  Created by Nishant Aggarwal on 8/25/17.
//  Copyright © 2017 Nishant Aggarwal. All rights reserved.
//

import UIKit

var myIndex = 0;

class OrgListController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
    }
    
    let items = ["Pup1", "Pup2", "Pup3", "Pup4", "Pup5", "Pup6", "Pup7", "Pup8", "Pup9", "Pup10", "Pup11", "Pup12", "Pup13", "Pup14", "Pup15", "Pup16", "Pup17", "Pup18", "Pup19", "Pup20"]
    
    let pictures = ["pup1.jpeg", "pup2.jpeg", "pup3.jpeg", "pup4.jpg", "pup5.jpg"]
    
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (items.count)
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! OrgListTableViewCell
        
        let randI = Int(arc4random_uniform(UInt32(pictures.count)))
        
        cell.myImage.image = UIImage(named: pictures[randI])
        cell.myLabel.text = items[indexPath.row]
        
        return (cell)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        showAlert()
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "I AM", message: items[myIndex], preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Close", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }

}
