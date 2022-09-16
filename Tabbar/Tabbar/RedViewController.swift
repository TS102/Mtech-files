//
//  ViewController.swift
//  Tabbar
//
//  Created by Tyler Sun on 9/16/22.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "Alert"
        tabBarItem.badgeColor = .gray
    }


}

