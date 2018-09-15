//
//  uiLabel.swift
//  eggs timer
//
//  Created by К.К. on 15.09.18.
//  Copyright © 2018 TeamK. All rights reserved.
//

import UIKit

class uiLabel: UILabel {
    
    override func awakeFromNib() {      // awake inherit for us
        super.awakeFromNib()            // awake super for us
    
        
        self.isEnabled = true
        //self.isHidden = false
        
        //self.frame = CGRect(x: 0, y: 0, width: 200, height: 20)
        
        //self.text = "Happy Birthday to You!"
        //self.font = UIFont.italicSystemFont(ofSize: 15)
        //self.textColor = UIColor.red
        self.textAlignment = NSTextAlignment.center
        
        //self.backgroundColor = UIColor(red: 100, green: 100, blue: 100, alpha: 1)
        
        self.clipsToBounds = true  // makes cornerRadius ok for later versions
        self.layer.cornerRadius = 10
        
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2.0
    }
    

    
    
    
   
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
