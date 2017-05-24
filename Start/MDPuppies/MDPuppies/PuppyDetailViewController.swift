//
//  PuppyDetailViewController.swift
//  MDPuppies
//
//  Created by Alex Dunn on 5/24/17.
//  Copyright © 2017 Alex Dunn. All rights reserved.
//

import Foundation
import UIKit

class PuppyDetailViewController : UIViewController{
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var TextView: UITextView!
    @IBOutlet weak var AdoptButton: UIButton!
    var puppy: Puppy?;
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }
    
    override func viewDidLoad() {
        if let puppy = puppy{
            navigationItem.title = puppy.name
            ImageView.image = puppy.image
            TextView.text = puppy.description
        }
    }
}
