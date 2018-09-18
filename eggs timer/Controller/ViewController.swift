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
    
    var isTicking:Bool = false
    var isInterrupted:Bool = true
    var timeToCount:Int = 0
    var ticker = Timer()
    
    @IBOutlet weak var playButton: UIBarButtonItem!
    @IBAction func playAction(_ sender: Any) {
        if !isTicking {  // clock is stopped
            if timeToCount > 0 {
                isTicking = true
                isInterrupted = false
                ticker = Timer.scheduledTimer(timeInterval: 1, target:self, selector:#selector(self.process), userInfo: nil, repeats: true)
            }
        }
        else {  // resume playing after pause
            if isInterrupted {
                isInterrupted = false
            }
        }
    }
    
    @IBOutlet weak var stopButton: UIBarButtonItem!
    @IBAction func stopAction(_ sender: Any) {
        counterLabel.text = "0"
        counterLabel.textColor = UIColor.black
        counterLabel.isHidden = true
        inputSeconds.text = ""
        inputSeconds.isHidden = false
     
    }
    
    @IBOutlet weak var rewindButton: UIBarButtonItem!
    @IBAction func rewindAction(_ sender: Any) {
        if isTicking {
            if timeToCount > 10 {
                    timeToCount -= 10
            }
        }
    }
    
    @IBOutlet weak var pauseButton: UIBarButtonItem!
    @IBAction func pauseAction(_ sender: Any) {
        if isTicking {
            isInterrupted = true
        }
    }
    
    @IBOutlet weak var fastForwardButton: UIBarButtonItem!
    @IBAction func fastForwardAction(_ sender: Any) {
        if isTicking {
            timeToCount += 10
        }
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
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let input = inputSeconds.text {
            if let secondsToCount = Int(input) {
                timeToCount = secondsToCount
                counterLabel.text = String(timeToCount)
                counterLabel.isHidden = false
                inputSeconds.isHidden = true
            }
            else{
                counterLabel.isHidden = true
            }
        }
    }

    @objc func process(){
        if !isInterrupted {
            if timeToCount >= 0 {
                if timeToCount < 60 {
                    counterLabel.textColor = UIColor.red
                }
                counterLabel.text = String(timeToCount)
                print(timeToCount)
                timeToCount -= 1
            }
            else{
                isTicking = false
                isInterrupted = true
                ticker.invalidate()
                timeToCount = 0
            }
        }
    }
    
    
    
    


}
