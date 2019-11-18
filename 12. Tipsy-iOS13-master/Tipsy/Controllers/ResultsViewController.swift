//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by 백승호 on 2019/11/07.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingslabel: UILabel!
    
    var billCalculated:Float?
    var peopleNumber:Int?
    var percentageTip:Float?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(billCalculated ?? 0.0)
        settingslabel.text = "Split between \(peopleNumber ?? 2) people, with \((percentageTip ?? 0.0) * 100)% tip"
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
