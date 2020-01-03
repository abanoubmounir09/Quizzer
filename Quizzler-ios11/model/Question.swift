//
//  Question.swift
//  Quizzler-ios11
//
//  Created by pop on 1/1/20.
//  Copyright © 2020 pop. All rights reserved.
//

import Foundation
struct Question {
    let text : String
    let anwer : String
    init(text:String,answer:String) {
        self.text = text
        self.anwer = answer
    }
}
