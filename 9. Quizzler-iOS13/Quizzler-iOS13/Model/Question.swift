//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 백승호 on 2019/11/03.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    
    init(q: String, a: String){
        self.text = q
        self.answer = a
    }

    
}
