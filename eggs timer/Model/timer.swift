//
//  timer.swift
//  eggs timer
//
//  Created by К.К. on 16.09.18.
//  Copyright © 2018 TeamK. All rights reserved.
//

import Foundation

class timer{
    
    var isTicking:Bool = false
    var timeToCount:Int
    var ticker = Timer()
    
    init(with timeToCount:Int){
        self.timeToCount = timeToCount
    }
    
    func start(){
        isTicking = true
        ticker = Timer.scheduledTimer(timeInterval: 1, target:self, selector:#selector(self.process), userInfo: nil, repeats: true)
    }
    
    @objc func process(){
        // what happens when ticker does his job
        if isTicking {
            if timeToCount > -1 {
                //print(timeToCount)
                timeToCount -= 1
            }
            else{
                stop()
            }
        }
    }
    
    func stop(){
        ticker.invalidate()
        timeToCount = 0
        isTicking = false
    }
}






