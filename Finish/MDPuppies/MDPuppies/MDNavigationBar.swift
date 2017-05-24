//
//  MDNavigationBar.swift
//  MDPuppies
//
//  Created by Alex Dunn on 5/24/17.
//  Copyright © 2017 Alex Dunn. All rights reserved.
//

import Foundation
import UIKit

class MDNavigationBar : UINavigationBar{
    override init(frame: CGRect) {
        super.init(frame: frame);
        setupShadow();
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        setupShadow();
    }
    
    func setupShadow(){
        self.shadowImage = nil;
        self.layer.shadowColor = UIColor.black.cgColor;
        self.layer.shadowOffset = CGSize.init(width: 0, height: 0);
        self.layer.shadowRadius = 3;
        self.layer.shadowOpacity = 1;
    }
}
