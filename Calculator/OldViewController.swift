////
////  ViewController.swift
////  Calculator
////
////  Created by Kevin on 6/15/15.
////  Copyright (c) 2015 Kevin. All rights reserved.
////

/*



This is an implementation where you don't need a model (the bad way to do it, but easier to conceptualize). Just replace ViewController (and attach the buttons) to make this the active view controller.



*/


//import UIKit
//
//class ViewController: UIViewController {
//    
//    @IBOutlet weak var display: UILabel!
//    
//    var userIsInTheMiddleOfTypingNumber = false
//    
//    @IBAction func appendDigit(sender: UIButton) {
//        // find out what number button was pressed
//        let digit = sender.currentTitle!
//        
//        if userIsInTheMiddleOfTypingNumber {
//            display.text = display.text! + digit
//        } else {
//            display.text = digit
//            userIsInTheMiddleOfTypingNumber = true
//        }
//        
//        
//        //        println("digit = \(digit)")
//    }
//    
//    @IBAction func operate(sender: UIButton) {
//        // find out what operation button was pressed
//        let operation = sender.currentTitle!
//        // make it so when user hits an operator, it hits enter as well
//        if userIsInTheMiddleOfTypingNumber {
//            enter()
//        }
//        switch operation {
//        case "×": performOperation({ $0 * $1 })
//        case "÷": performOperation({ $1 / $0 })
//        case "+": performOperation({ $0 + $1 })
//        case "−": performOperation({ $1 - $0 })
//        case "√": performOperation({ sqrt($0) })
//        default: break
//        }
//    }
//    
//    func performOperation(operation: (Double, Double) -> Double) {
//        // need an if statement in case array is '0', and you need at least 2 nums
//        if operandStack.count >= 2 {
//            displayValue = operation(operandStack.removeLast(), operandStack.removeLast())
//            enter()
//        }
//        
//    }
//    
//    private func performOperation(operation: Double -> Double) {
//        // need an if statement in case array is '0', and you need at least 1 num
//        if operandStack.count >= 1 {
//            displayValue = operation(operandStack.removeLast())
//            enter()
//        }
//        
//    }
//    
//    var operandStack = Array<Double>()
//    
//    @IBAction func enter() {
//        userIsInTheMiddleOfTypingNumber = false
//        operandStack.append(displayValue)
//        println("operandStack = \(operandStack)")
//    }
//    
//    var displayValue: Double {
//        get {
//            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
//        }
//        set {
//            display.text = "\(newValue)"
//            userIsInTheMiddleOfTypingNumber = false
//        }
//    }
//}
//
