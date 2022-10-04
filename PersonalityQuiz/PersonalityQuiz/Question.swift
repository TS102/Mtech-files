//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Tyler Sun on 10/2/22.
//

import Foundation
struct Answer {
    var text: String
    var type: AnimalType
}
enum AnimalType: Character {
    case dog = "🐶"
    case shark = "🦈"
    case koala = "🐨"
    case dolphin = "🐬"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are outgoing and friendly"
        case .shark:
            return "You are the apex predator"
        case .koala:
            return "you are very patient and self effecient"
        case .dolphin:
            return "Smart and fun"
        }
    }
    }
    struct Question {
        var text: String
        var type: ResponseType
        var answers: [Answer]
    }
    enum ResponseType {
        case single, multiple, ranged
    }

