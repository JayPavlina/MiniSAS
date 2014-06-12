//
//  NewBattleViewController.swift
//  MiniSas2
//
//  Created by Jay on 6/12/14.
//  Copyright (c) 2014 Exploding Rabbit. All rights reserved.
//

import Foundation
import UIKit

class NewBattleViewController : UIViewController {
    
    @IBOutlet var levelIDLabel : UILabel
    
    @IBOutlet var playerCountLabel : UILabel
    
    @IBAction func levelIDValueDidChange(stepper : UIStepper) {
        levelIDLabel.text = String(Int(stepper.value))
    }
    
    @IBAction func playerCountValueDidChange(stepper : UIStepper) {
        playerCountLabel.text = String(Int(stepper.value))
    }
    
    @IBAction func pressedPlayButton(sender : UIButton) {
        println("press play")
        var battleRecord = BattleRecord()
        battleRecord.levelID = UInt64(levelIDLabel.text.toInt()!)
        battleRecord.creationDate = NSDate(timeIntervalSinceNow: 0)
    }
    
    @IBAction func pressedInviteButton(sender : UIButton) {
        println("press invite")
    }
    
}