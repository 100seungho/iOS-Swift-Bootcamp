//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func randomGenerator() -> Int {
        return Int.random(in: 0...4)
    }
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: Any) {
        imageView.image = ballArray[randomGenerator()]
    }
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball5"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball3")]

}

