//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    let eggTime = ["Soft":3, "Medium":420 , "Hard":720]
    var counter = 30
    var progress = 0.0
    var selectedHardness = ""
    
    var player: AVPlayer?
    
    var timer = Timer()
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var doneLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        selectedHardness = hardness
        
        timer.invalidate()
        
        counter = eggTime[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            doneLabel.text = "\(counter) seconds."
            progressBar.progress = Float((eggTime[selectedHardness]!-counter))/Float(eggTime[selectedHardness]!)
            counter -= 1
        } else {
            timer.invalidate()
            doneLabel.text = "DONE!!"
            progressBar.progress = 1.0
            playsound()
            
        }
    }
    
    func playsound() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else {return}
        
        do {
            player = try AVPlayer(url: url as URL)
            
        } catch {
            print("audio file error")
        }
        player?.play()
    }

    
}
