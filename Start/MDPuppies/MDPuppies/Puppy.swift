//
//  Puppy.swift
//  MDPuppies
//
//  Created by Alex Dunn on 5/24/17.
//  Copyright © 2017 Alex Dunn. All rights reserved.
//

import Foundation
import UIKit

class Puppy{
    var id: uint
    var name: String
    var image: UIImage
    var description: String
    
    init(id: uint, name: String, description: String, image: UIImage) {
        self.id = id;
        self.name = name;
        self.description = description;
        self.image = image;
    }
}
