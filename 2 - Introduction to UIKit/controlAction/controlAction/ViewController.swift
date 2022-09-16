//
//  ViewController.swift
//  controlAction
//
//  Created by Tyler Sun on 9/1/22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Propterires and outlets

   
    
    
    // MARK: life cycle methods
    override func viewDidLoad() {
      
        // Do any additional setup after loading the view.
    }
    // MARK: actions
   
    @IBAction func colorchangeslider(_ sender: UISlider) {
        if sender.value < 0.1 {
            self.view.backgroundColor = .systemMint
        } else if sender.value < 0.2 {
            self.view.backgroundColor = .systemYellow
        } else if sender.value < 0.3 {
            self.view.backgroundColor = .magenta
        } else if sender.value < 0.4 {
            self.view.backgroundColor = .blue
        }else if sender.value < 0.5 {
            self.view.backgroundColor = .systemGray
        }else if sender.value < 0.6 {
            self.view.backgroundColor = .red
        } else if sender.value <= 0.7{
            self.view.backgroundColor = .tintColor
        }


    }
    
}
