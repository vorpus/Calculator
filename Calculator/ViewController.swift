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
    
    @IBAction func ActionButton(_ sender: UIButton) {
        isUserTyping = false
        switch (sender.currentTitle!) {
        case "π":
            Display.text = "3.141592"
        case "√":
            Display.text = "1"
        default:
            print("hi")
        }
    }

}

