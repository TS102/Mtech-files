//
//  ViewController.swift
//  TextValidation
//
//  Created by Tyler Sun on 9/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passWordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var alertLabel: UILabel!
    @IBOutlet var passWordLabel: UILabel!
    
    let specialCharacters = "!~`@#$%^&*-+();:={}[],.<>?\\/\"\'"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //try the black diamond part after checking off
    
    @IBAction func loginButton(_ sender: Any) {
        let characterset = CharacterSet(charactersIn: specialCharacters)

        if let password = passWordTextField.text {
            if let incorrectPassword = invalidPassword(password) {
                passWordLabel.text = incorrectPassword
            }
        }
        func invalidPassword(_ value: String) -> String? {
            if value.count < 8 {
                return "Needs more characters!"
            }
            if !lowerCase(value) {
                return "Needs a lowercase!"
            } else {
                passWordLabel.text = ""
            }

            if !upperCase(value) {
                return "Needs a Uppercase!"
            } else {
                passWordLabel.text = ""
            }

            if passWordTextField.text?.rangeOfCharacter(from: characterset) == nil {
                return "Needs a symbol!"
            }
            return ""
        }
        func containsSymbols(_ value: String) -> Bool {
            let regularExpression = "^[A-Za-z0-9 !\"#$%&'()*+,-./:;<=>?@\\[\\\\\\]^_`{|}~].{8,}$"
            let predicate = NSPredicate(format: "Self Matches %@", regularExpression)
            return predicate.evaluate(with: value)
        }

        func lowerCase(_ value: String) -> Bool {
            let regularExpression = ".*[a-z]+.*"
            let predicate = NSPredicate(format: "Self Matches %@", regularExpression)
            return predicate.evaluate(with: value)
        }

        func upperCase(_ value: String) -> Bool {
            let regularExpression = ".*[A-Z]+.*"
            let predicate = NSPredicate(format: "Self Matches %@", regularExpression)
            return predicate.evaluate(with: value)
        }
        
        if let userName = userNameTextField.text {
            if let invalidUser = invalidUser(userName) {
                alertLabel.text = invalidUser
            }
            func invalidUser(_ value: String) -> String? {
                if validEmail(value) {
                    alertLabel.textColor = .systemBlue
                    return "Login successful!"
                }
                return "Invalid Email"
            }
            
            func validEmail(_ value: String) -> Bool {
                let regularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
                let predicate = NSPredicate(format: "Self Matches %@", regularExpression)
                return predicate.evaluate(with: value)
            }
            
        }
    }
}
