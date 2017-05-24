//
//  PuppyTableViewCell.swift
//  MDPuppies
//
//  Created by Alex Dunn on 5/24/17.
//  Copyright © 2017 Alex Dunn. All rights reserved.
//

import Foundation
import UIKit

class PuppyTableViewCell : UITableViewCell{
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated);
    }
}
