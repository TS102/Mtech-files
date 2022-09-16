//
//  ViewController.swift
//  2.9 lab
//
//  Created by Tyler Sun on 9/1/22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: propeties
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //  MARK: actions
    
    
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        if textField.hasText {
            self.label.text = self.textField.text
            
        }
    }
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        self.textField.text = ""
        self.label.text = ""

        //clear the textfields text property
        
        //clear the labels text property
    }
    
    
}

