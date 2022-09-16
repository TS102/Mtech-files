//
//  ViewController.swift
//  Interface Builder
//
//  Created by Tyler Sun on 9/5/22.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet var mainLabel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.setTitle("This app rocks", for: .normal)    }
    
}

