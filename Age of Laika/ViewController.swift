//
//  ViewController.swift
//  Age of Laika
//
//  Created by Carlos Beltran on 10/5/14.
//  Copyright (c) 2014 Carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var convertedAgeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButton(sender: AnyObject) {
        let conversion = 7
        let fieldToInt = ageField.text.toInt()!
        var newDouble = Double(fieldToInt)
        
        
        if fieldToInt < 0 {
            convertedAgeLabel.text = "Cannot have non-positive value!"
            convertedAgeLabel.hidden = false
            ageField.text = ""
            ageField.resignFirstResponder()
            return
        }
        
        convertedAgeLabel.text = "In dog years: \(fieldToInt * conversion) "
        convertedAgeLabel.hidden = false
        
        ageField.text = ""
        ageField.resignFirstResponder()
    }

    @IBAction func convertRealButton(sender: AnyObject) {
        let firstConversion = 10.5
        let secondConversion:Double = 4
        
        var ageEntered = ageField.text.toInt()!
        var age:Double
        
        if ageEntered < 0 {
            convertedAgeLabel.text = "Cannot have non-positive value!"
            convertedAgeLabel.hidden = false
            ageField.text = ""
            ageField.resignFirstResponder()
            return
        }
        
        if ageEntered <= 2 {
            age = Double(ageEntered) * firstConversion
        }
        else {
            age = ((Double(ageEntered) - 2.0) * secondConversion) + (2.0 * firstConversion)
        }
        
        convertedAgeLabel.text = "In real dog years: \(age) "
        convertedAgeLabel.hidden = false
        
        ageField.text = ""
        ageField.resignFirstResponder()
    }
}

