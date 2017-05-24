//
//  MDImageCardView.swift
//  MDPuppies
//
//  Created by Alex Dunn on 5/24/17.
//  Copyright © 2017 Alex Dunn. All rights reserved.
//

import Foundation
import UIKit

class MDImageCardView : UIImageView{
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        setupShadow();
    }
    func setupShadow(){
        self.layer.shadowColor = UIColor.gray.cgColor;
        self.layer.shadowOffset = CGSize.init(width: 2, height: 2);
        self.layer.shadowRadius = 2;
        self.layer.shadowOpacity = 0.8;
        
    }

}
