//
//  ViewController.swift
//  calculator
//
//  Created by Tyler Sun on 9/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var numberButtons: [UIButton]!
    var operators: String = ""
    var previousNum = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // making the numbers appear on screen when button is tapped
    @IBAction func numberTapped(_ sender: Any) {
        
        guard let button = sender as? UIButton else { return }
        
        guard let title = button.titleLabel else {return}
        
        guard let value = title.text else { return }
        
        if numberLabel.text != "0" {
            numberLabel.text = numberLabel.text! + value
        } else {
            numberLabel.text = value
        }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        numberLabel.text = "0"
    }
    
    @IBAction func positiveOrNegative(_ sender: Any) {
        
        guard let button = sender as? UIButton else {return}
        guard let title = button.titleLabel else {return}
        guard var positiveOrNegative = title.text else {return}
        positiveOrNegative = "-"
        
        
        if let label = numberLabel.text, numberLabel.text!.prefix(1) == "-" {
            numberLabel.text?.remove(at: label.startIndex)
        } else if numberLabel.text != "-" {
            numberLabel.text = positiveOrNegative + numberLabel.text!
        }
    }
    
    @IBAction func convertToDecimal(_ sender: Any) {
        guard let convertNumber = Double(numberLabel.text!) else {return}
        numberLabel.text = String(convertNumber / 100)
        
    }
    
    @IBAction func operators(_ sender: UIButton) {
     
        
        switch sender.titleLabel?.text{
        case "÷":
            previousNum = Double(numberLabel.text!)!
            numberLabel.text="0"
            operators = (sender.titleLabel?.text)!
        case "x":
            previousNum = Double(numberLabel.text!)!
            numberLabel.text="0"
            operators = (sender.titleLabel?.text)!
        case "-":
            previousNum = Double(numberLabel.text!)!
            numberLabel.text="0"
            operators = (sender.titleLabel?.text)!
        case "+":
            previousNum = Double(numberLabel.text!)!
            numberLabel.text="0"
            operators = (sender.titleLabel?.text)!
        case "=":
            if operators == "+" {
                numberLabel.text = String(previousNum + Double(numberLabel.text!)!)
            } else if operators == "-"{
                numberLabel.text = String(previousNum - Double(numberLabel.text!)!)
                
            } else if operators == "x"{
                numberLabel.text = String(previousNum * Double(numberLabel.text!)!)
            } else if operators == "÷"{
                numberLabel.text = String(previousNum / Double(numberLabel.text!)!)
            }
        default: print("not working")
        }
    }
}

