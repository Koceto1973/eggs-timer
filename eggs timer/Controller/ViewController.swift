//
//  ViewController.swift
//  eggs timer
//
//  Created by К.К. on 15.09.18.
//  Copyright © 2018 TeamK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appName.layer.cornerRadius = 10
        appName.textColor = UIColor.red
        appName.text = "Happy Birthday to You!"
        appName.font = UIFont.italicSystemFont(ofSize: 15)
        appName.clipsToBounds = true
        appName.layer.cornerRadius = 10  // set clip to bounds for all IOS versions
        
    }

    

}

