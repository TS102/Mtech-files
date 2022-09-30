//
//  ViewController.swift
//  Apple Pie
//
//  Created by Tyler Sun on 9/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    var listOfWords = ["ball", "jelly", "coding", "apple", "tree", "shoe", "light", "glass", "phone", "chips", "dog", "cat", "fish" ]
    let incorrectMovesAllowed = 7
    
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totallosses = 0 {
        didSet {
            newRound()
        }
    }
    
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
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetter: [])
            enabletterButtons(true)
            updateUi()
        } else {
            enabletterButtons(false)
        }
        
        func enabletterButtons (_ enable: Bool) {
            for button in letterButtons {
                button.isEnabled = enable
            }
        }
      // having trouble here
    }
    
    func updateUi(){
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = ("Wins: \(totalWins), Losses: \(totallosses)")
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        
        
    }
    
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totallosses += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUi()
        }
    }
    
    
}

