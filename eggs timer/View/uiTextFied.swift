//
//  uiTextFied.swift
//  eggs timer
//
//  Created by К.К. on 16.09.18.
//  Copyright © 2018 TeamK. All rights reserved.
//

import UIKit

class uiTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
    
        backgroundColor =  UIColor.white
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        // providing value to the optional property
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [ .foregroundColor :  UIColor.darkGray] )
            attributedPlaceholder = place
            textColor =  UIColor.black
        }
    
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}


