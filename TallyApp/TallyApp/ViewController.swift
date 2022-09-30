//
//  ViewController.swift
//  TallyApp
//
//  Created by Tyler Sun on 9/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tallyLabel: UILabel!
    var count: Int = 0 {
        didSet {
            tallyLabel.text = "\(count)"
        }
    }
 
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        // Do any additional setup after loading the view.
    }
    @IBAction func addCountButton(_ sender: Any) {
        guard let numbers = sender as? UIButton else {return}
        guard let tally = numbers.titleLabel?.text else {return}
        switch tally {
        case "1":
            count += 1
            tallyLabel.textColor = .red
        case "2":
            count += 2
            tallyLabel.textColor = .systemPurple
        case "3":
            count += 3
            tallyLabel.textColor = .gray
        case "4":
            count += 4
            tallyLabel.textColor = .systemYellow
        case "5":
            count += 5
            tallyLabel.textColor = .lightGray
        case "6":
            count += 6
            tallyLabel.textColor = .magenta
        case "7":
            count += 7
            tallyLabel.textColor = .systemBrown
        case "8":
            count += 8
            tallyLabel.textColor = .green
        case "9":
            count += 9
            tallyLabel.textColor = .systemPink
        case "10":
            count += 10
            tallyLabel.textColor = .link
        default:
            print("this should not show up in the terminal")
        }
    }
    
    @IBAction func clearButton(_ sender: Any) {
        count = 0
        tallyLabel.text = "All gone :("
        tallyLabel.textColor = .black
    }
    
}

