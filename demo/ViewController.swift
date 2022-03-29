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
    var isDecimal = false
    
    func reset() {
        first = ""
        second = ""
        function = ""
        userInput = ""
        result = 0.0
        isDecimal = false
    }
    
    func checkNumIsInteger(checkNum: Double) {
        //確認浮點數的取餘
        if (checkNum.truncatingRemainder(dividingBy: 1) == 0) {
            userInput = String(checkNum)
            label.text  = "\(Int(Double(checkNum)))"
            
        } else {
            userInput = String(checkNum)
            label.text = String(checkNum)
        }
    }
    
    func operation(){
        if userInput == "" {
            first = "0"
        } else {
            first = userInput
        }
        userInput = ""
        isDecimal = false
    }
    
    func checkResultLength(labelLength: Double){
        var goodLabel: String
        if floor(labelLength) == labelLength {
            goodLabel = "\(Int(labelLength))"
        } else {
            goodLabel = "\(labelLength)"
        }
        //result最多顯示7個字
        if goodLabel.count >= 7 {
            goodLabel = String(goodLabel.prefix(7))
        }
        label.text = goodLabel
    }
    
    @IBOutlet weak var label: UILabel!
        
    @IBAction func cleanButton(_ sender: Any) {
        reset()
        label.text = "0"
    }
    
    @IBAction func plusMinus(_ sender: Any) {
        if label.text != "0" {
            let changePlusMinus = Double(label.text!)! * -1
            
            checkNumIsInteger(checkNum: changePlusMinus)
        }
    }
    
    @IBAction func percent(_ sender: Any) {
        if label.text != "0" {
            let text = label.text!
            let textDouble = Double(text)!
            let textPercent = textDouble / 100
            
            checkNumIsInteger(checkNum: textPercent)
        }
    }
        
    @IBAction func division(_ sender: Any) {
        function = "/"
        operation()
    }
    
    @IBAction func multiplication(_ sender: Any) {
        function = "*"
        operation()
    }
    
    @IBAction func subtraction(_ sender: Any) {
        function = "-"
        operation()
    }
    
    @IBAction func addition(_ sender: Any) {
        function = "+"
        operation()
    }
    
    @IBAction func equal(_ sender: Any) {
        second = userInput
        
        if (first == "" && second == "") {
            label.text = "0"
        } else if (first == "" && second != "") {
            label.text = second
        } else if (second == "") {
            label.text = first
        } else {
            var firstInput = 0.0
            var secondInput = 0.0
            firstInput = Double(first)!
            secondInput = Double(second)!
            
            if (function == "+") {
                result = firstInput + secondInput
            }
            else if (function == "-") {
                result = firstInput - secondInput
            }
            else if (function == "*") {
                result = firstInput * secondInput
            }
            else if (function == "/") {
                if firstInput == 0 {
                    result = 0
                } else {
                result = firstInput / secondInput
                }
            }
            checkResultLength(labelLength: result)
        }
        reset()
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        if (label.text == "0" || label.text!.count < 1) {
            label.text = "0"
        } else {
            label.text = ""
            userInput += "0"
            label.text! += userInput
        }
    }
    
    @IBAction func decimal(_ sender: Any) {
        if isDecimal == false {
            switch userInput {
            case "0" :
                label.text = ""
                userInput = "0."
                label.text! += userInput
                isDecimal = true
            case "" :
                label.text = ""
                userInput = "0."
                label.text! += userInput
                isDecimal = true
            default:
                label.text = ""
                userInput += "."
                label.text! += userInput
                isDecimal = true
            }
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

