//
//  QuizeBrain.swift
//  Quizzler-ios11
//
//  Created by pop on 1/1/20.
//  Copyright © 2020 pop. All rights reserved.
//

import Foundation
struct QuizeBrain {
    var questionnumber = 0
    let quizer = [Question(text: "1+1 = 2",answer: "true"),
                  Question(text: "coding by c#", answer: "false"),
                  Question(text: "sky color is blue",answer: "true"),
                  Question(text: "its hot now ",answer: "false"),
                  Question(text: "its simple app",answer: "true"),
                  Question(text: "nice to meet u",answer: "true"),
                  Question(text: "be patient ",answer: "true"),
                  Question(text: "hope good luck for u ",answer: "true"),
                  Question(text: "magic isnot amazing  ",answer: "false"),
                  Question(text: "five + five = 10",answer: "true"),
                  Question(text: "u can fly without winds",answer: "false"),
                  Question(text: "quest 13",answer: "true")
    ]
    
    func CheckAnswewr(answer:String)->Bool{
        if answer == quizer[questionnumber].anwer{
            return true
        }else{
            return false
        }
    }
    
    func GetQuestion()->String{
        
        return quizer[questionnumber].text
    }
    
    func getProgress()->Float{
        return Float(questionnumber + 1) / Float(quizer.count)
    }
    
    mutating func NextQuestion(){
        if questionnumber + 1 < quizer.count{
            questionnumber += 1
        }else{
            questionnumber = 0
        }
    }
}













