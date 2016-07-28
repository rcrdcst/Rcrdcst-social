//
//  RoundBtn.swift
//  rcrdcst-social
//
//  Created by ricardo silva on 28/07/2016.
//  Copyright © 2016 ricardo silva. All rights reserved.
//

import UIKit

class RoundBtn: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.8).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        layer.cornerRadius = 5.0
    }

}
