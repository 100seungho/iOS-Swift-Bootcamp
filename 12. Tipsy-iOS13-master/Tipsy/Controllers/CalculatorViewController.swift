//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var numberOfPeopleNumberLabel: UILabel!
    
    var tipPercentage: Float = 0.0
    var numberOfPeople: Double = 0.0
    var calculatedBill: Float = 0.0
    var bill: Float = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        switch sender.currentTitle! {
        case "0%":
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            
            tipPercentage = 0.0
        case "10%":
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            
            tipPercentage = 0.1
        default:
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            
            tipPercentage = 0.2
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        numberOfPeople = sender.value
        numberOfPeopleNumberLabel.text = String(format: "%.0f", numberOfPeople)
        
        
    }
    
    @IBAction func billTextEntered(_ sender: UITextField) {
        
        bill = Float(sender.text ?? "0.0") ?? 0.0
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatedBill  = bill * (1 + tipPercentage) / Float(numberOfPeople)
        print(calculatedBill)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.billCalculated = calculatedBill
            destinationVC.peopleNumber = Int(numberOfPeople)
            destinationVC.percentageTip = tipPercentage
        }
    }
}

