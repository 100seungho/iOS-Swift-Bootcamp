//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func giveRandomNumber() -> Int {return Int.random(in: 0..<6)}
    
    // IBOutlet allows me to reference a UI element
    // IBOutlet indicates that this object will be connected to something in Interface Builder
    // IBOutlet is just a keyword which is added to a variable declaration.
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    // IBActions are called when an event occurs
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let dices = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = dices[giveRandomNumber()]
        diceImageView2.image = dices.randomElement()
    }
    
}


