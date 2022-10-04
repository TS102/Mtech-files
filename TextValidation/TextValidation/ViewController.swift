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
    let specialCharacters = "!~`@#$%^&*-+();:={}[],.<>?\\/\"\'"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //try the black diamond part after checking off
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        let characterset = CharacterSet(charactersIn: specialCharacters)
    
        if passWordTextField.text?.rangeOfCharacter(from: characterset) != nil && passWordTextField.text!.count >= 8 {
            alertLabel.text = "Correct Password"
        } else {
            alertLabel.text = "Please enter password"
        }
     
        //        if (passWordTextField.text?)! = lowercase {
        //            alertLabel.text = "works"
        //        }
        //        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        //
        //        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        //        if userNameTextField == emailPred {
        //        print("works")
        //        }
        //    }
        
    }
}

func containLowerCase (_ value: String) -> Bool {
    let regularExpression = ".*[a-z]+.*"
    let predicate = NSPredicate(format: "Self Matches %@", regularExpression)
    return !predicate.evaluate(with: value)
    
}
