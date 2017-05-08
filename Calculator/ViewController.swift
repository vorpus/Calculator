//
//  ViewController.swift
//  Calculator
//
//  Created by Li Zhang on 5/4/17.
//  Copyright © 2017 Li Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Display: UILabel!
    
    var isUserTyping = false
    
    @IBAction func Button(_ sender: UIButton) {
        if (isUserTyping) {
            Display.text = Display.text! + sender.currentTitle!
        } else {
            Display.text = sender.currentTitle!
            isUserTyping = true
        }
    }
    
    var displayValue: Double {
        get {
            return Double(Display.text!)!
        }
        set {
            Display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction func ActionButton(_ sender: UIButton) {
        if (isUserTyping) {
            brain.setOperand(displayValue)
            isUserTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(mathematicalSymbol)
        }
        if let result = brain.result {
            displayValue = result
        }
    }

}

