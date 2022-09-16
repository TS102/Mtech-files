//
//  ViewController.swift
//  Apple Pie
//
//  Created by Tyler Sun on 9/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    var listOfWords = ["ball", "jelly", "coding", "spple", "tree", "shoe", "light", "glass", "phone", "chips", "dog", "cat", "fish" ]
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totallosses = 0
    
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
       newRound()
    }

    var currentGame: Game!
        
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetter: [])
        updateUi()
    }
    
    func updateUi(){
        scoreLabel.text = ("Wins: \(totalWins), Losses: \(totallosses)")
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateUi()
    }
    
}

