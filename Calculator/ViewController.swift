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
    
    @IBAction func Button(_ sender: UIButton) {
        Display.text = Display.text! + sender.currentTitle!
    }

}

