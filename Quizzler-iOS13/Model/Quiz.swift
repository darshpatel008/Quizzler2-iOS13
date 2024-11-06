//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Darsh viroja  on 24/08/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Quiz
{
    var question: String
    var answers: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.question = q
        self.answers = a
        self.correctAnswer = correctAnswer
    }
    
}
