//
//  ViewController.swift
//  eggs timer
//
//  Created by К.К. on 15.09.18.
//  Copyright © 2018 TeamK. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var appName: uiLabel!
    @IBOutlet weak var counterLabel: uiLabel!
    @IBOutlet weak var inputSeconds: uiTextField!
    
    @IBOutlet weak var playButton: UIBarButtonItem!
    @IBAction func playAction(_ sender: Any) {
    }
    
    @IBOutlet weak var stopButton: UIBarButtonItem!
    @IBAction func stopAction(_ sender: Any) {
    }
    
    @IBOutlet weak var rewindButton: UIBarButtonItem!
    @IBAction func rewindAction(_ sender: Any) {
    }
    
    @IBOutlet weak var pauseButton: UIBarButtonItem!
    @IBAction func pauseAction(_ sender: Any) {
    }
    
    @IBOutlet weak var fastForwardButton: UIBarButtonItem!
    @IBAction func fastForwardAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       inputSeconds.delegate = self
       counterLabel.isHidden = true
        
       
        
        
   }
    
    // input keyboard dismisal
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

