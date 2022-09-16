//
//  Game.swift
//  Apple Pie
//
//  Created by Tyler Sun on 9/14/22.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetter: [Character]
    
    mutating func playerGuessed(letter: Character) {
        guessedLetter.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
