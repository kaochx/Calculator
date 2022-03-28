//
//  ViewController.swift
//  demo
//
//  Created by White Kao on 2022/3/2.
//

import UIKit

class ViewController: UIViewController {

    var first = ""
    var second = ""
    var function = ""
    var result = 0.0
    var userInput = ""
    var isFirstNum = true
    var isDecimal = false
        
    @IBOutlet weak var label: UILabel!
    
    @IBAction func cleanButton(_ sender: Any) {
        first = ""
        second = ""
        function = ""
        userInput = ""
        result = 0.0
        label.text = "0"
    }
    @IBAction func plusMinus(_ sender: Any) {
        
    }
    @IBAction func percent(_ sender: Any) {
        if label.text != "0" {
            let text = label.text!
            let textDouble = Double(text)!
            let textPercent = textDouble / 100
            label.text = String(textPercent)
        }
    }
    @IBAction func division(_ sender: Any) {
        function = "/"
        first = userInput
        userInput = ""
    }
    @IBAction func multiplication(_ sender: Any) {
        function = "*"
        first = userInput
        userInput = ""
    }
    @IBAction func subtraction(_ sender: Any) {
        function = "-"
        first = userInput
        userInput = ""
    }
    @IBAction func addition(_ sender: Any) {
        function = "+"
        first = userInput
        userInput = ""
    }
    @IBAction func equal(_ sender: Any) {
        second = userInput
        var firstInput = 0.0
        var secondInput = 0.0
        firstInput = Double(first)!
        secondInput = Double(second)!
        
        if(function == "+") {
            result = firstInput + secondInput
            label.text = String(result)
        }
        else if(function == "-") {
            result = firstInput - secondInput
            label.text = String(result)
        }
        else if(function == "*") {
            result = firstInput * secondInput
            label.text = String(result)
        }
        else if(function == "/") {
            result = firstInput / secondInput
            
            label.text = String(result)
            
        }
        
    }
    @IBAction func zeroButton(_ sender: Any) {
        if isFirstNum == true {
            label.text = "0"
            isFirstNum = false
        } else {
        label.text = ""
        userInput += "0"
        label.text! += userInput
        }
    }
    @IBAction func oneButton(_ sender: Any) {
        label.text = ""
        userInput += "1"
        label.text! += userInput
    }
    @IBAction func twoButton(_ sender: Any) {
        label.text = ""
        userInput += "2"
        label.text! += userInput
    }
    @IBAction func threeButton(_ sender: Any) {
        label.text = ""
        userInput += "3"
        label.text! += userInput
    }
    @IBAction func fourButton(_ sender: Any) {
        label.text = ""
        userInput += "4"
        label.text! += userInput
    }
    @IBAction func fiveButton(_ sender: Any) {
        label.text = ""
        userInput += "5"
        label.text! += userInput
    }
    @IBAction func sixButton(_ sender: Any) {
        label.text = ""
        userInput += "6"
        label.text! += userInput
    }
    @IBAction func sevenButton(_ sender: Any) {
        label.text = ""
        userInput += "7"
        label.text! += userInput
    }
    @IBAction func eightButton(_ sender: Any) {
        label.text = ""
        userInput += "8"
        label.text! += userInput
    }
    @IBAction func nineButton(_ sender: Any) {
        label.text = ""
        userInput += "9"
        label.text! += userInput
    }
    @IBAction func decimal(_ sender: Any) {
//        if label.text == "0" {
//            label.text = "0."
//        } else {
        label.text = ""
        userInput += "."
        label.text! += userInput
        //}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

