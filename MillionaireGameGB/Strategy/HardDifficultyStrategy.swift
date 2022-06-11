//
//  HardDifficultyStrategy.swift
//  MillionaireGameGB
//
//  Created by Евгений Доброволец on 07.06.2022.
//

import Foundation


class HardDifficultyStrategy: DifficultyStrategyProtocol {
    
    func questionsOrder(questions: inout [Question]) {
        questions.shuffle()
    }
}
