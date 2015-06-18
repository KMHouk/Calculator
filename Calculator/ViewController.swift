//
//  ViewController.swift
//  Calculator
//
//  Created by Kevin on 6/15/15.
//  Copyright (c) 2015 Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingNumber = false
    
    var brain = CalculatorBrain() // this is what goes from controller to model

    @IBAction func appendDigit(sender: UIButton) {
        // find out what number button was pressed
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTypingNumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingNumber = true
        }
//        if you want to debug and capture pressed button:
//        println("digit = \(digit)")
    }
    
    @IBAction func operate(sender: UIButton) {
        // make it so when user hits an operator, it hits enter as well
        if userIsInTheMiddleOfTypingNumber {
            enter()
        }
        // find out what operation button was pressed
        if let operation = sender.currentTitle {
            if let result = brain.performOperation(operation) {
                displayValue = result
            } else {
                displayValue = 0
            }
        }
        
    }
    
    @IBAction func enter() {
        userIsInTheMiddleOfTypingNumber = false
        if let result = brain.pushOperand(displayValue) {
            displayValue = result
        } else {
            displayValue = 0
        }
    }
    
    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set {
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingNumber = false
        }
    }
}

