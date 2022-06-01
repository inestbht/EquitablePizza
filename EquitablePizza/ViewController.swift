//
//  ViewController.swift
//  EquitablePizza
//
//  Created by Samuel Pena on 5/31/22.
//  Copyright © 2022 Samuel Pena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberOfSlices: UITextField!
    @IBOutlet weak var numberOfEaters: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        guard let numberOfSlices = Double(numberOfSlices.text!) else {
            resultsLabel.text = "Please enter a valid number of slices."
            return
        }
        guard let numberOfEaters = Double(numberOfEaters.text!) else {
            resultsLabel.text = "Please enter a valid number of eaters."
            return
        }
        guard numberOfEaters != 0 else {
            resultsLabel.text = "Cannot divide a pizza by zero."
            return
        }
        
        resultsLabel.text = "Each person gets \(numberOfSlices/numberOfEaters) slices."
        
        
//        if let numberOfSlices = Double(numberOfSlices.text!) {
//            if let numberOfEaters = Double(numberOfEaters.text!) {
//                if numberOfEaters != 0 {
//                    resultsLabel.text = "Each person get \(numberOfSlices/numberOfEaters) slices"
//                } else {
//                    resultsLabel.text = "Cannot divide pizza by zero."
//                }
//            } else {
//                resultsLabel.text = "Please enter a valid number of eaters."
//            }
//        } else {
//            resultsLabel.text = "Please enter a valid number of slices."
//        }
    }

}

