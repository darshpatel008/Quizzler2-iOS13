

import Foundation


struct QuizBrain {
    var quiz =
    [
        Quiz(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Quiz(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Quiz(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Quiz(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Quiz(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Quiz(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Quiz(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Quiz(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Quiz(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Quiz(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    
    var questionNumber = 0 // for indexing 
    var score = 0
    
    
    mutating func checkAnswer(answer userAnswer: String) ->Bool
    {
        if userAnswer == quiz[questionNumber].correctAnswer
        {
            score = score + 1
            return true
        }
        else
        {
            return false
        }
    }
    func ourScore() ->Int
    {
        return score
    }
    
    func gotQuestion() ->String
    {
        return quiz[questionNumber].question
    }
    func gotOptions() ->[String]
    {
        return quiz[questionNumber].answers
    }
    mutating func newQuestion()
    {
        if questionNumber + 1 < quiz.count
        {
            questionNumber = questionNumber + 1
        }
        else
        {
            questionNumber = 0
            score = 0
        }
    }
    
    func progressBar() ->Float
    {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
}
