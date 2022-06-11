//
//  DifficultyStrategyProtocol.swift
//  MillionaireGameGB
//
//  Created by Евгений Доброволец on 07.06.2022.
//

import Foundation

protocol DifficultyStrategyProtocol {
    func questionsOrder(questions: inout [Question])
}
