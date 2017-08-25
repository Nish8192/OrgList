//
//  OrgListTableViewCell.swift
//  orglist
//
//  Created by Nishant Aggarwal on 8/25/17.
//  Copyright © 2017 Nishant Aggarwal. All rights reserved.
//

import UIKit

class OrgListTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myImage.layer.borderWidth = 1
        myImage.layer.masksToBounds = false
        myImage.layer.cornerRadius = myImage.frame.size.width/2
        myImage.contentMode = UIViewContentMode.scaleAspectFit
        myImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
