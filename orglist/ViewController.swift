//
//  ViewController.swift
//  orglist
//
//  Created by Nishant Aggarwal on 8/25/17.
//  Copyright © 2017 Nishant Aggarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let items = ["Label1", "Label2", "Label3", "Label4", "Label5", "Label6", "Label7", "Label8", "Label9", "Label10", "Label11", "Label12", "Label13", "Label14", "Label15", "Label16", "Label17", "Label18", "Label19", "Label20"]
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (items.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = items[indexPath.row]
        
        return (cell)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

