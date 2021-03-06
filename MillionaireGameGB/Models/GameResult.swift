//
//  GameResult.swift
//  MillionaireGameGB
//
//  Created by Евгений Доброволец on 31.05.2022.
//

import Foundation
import UIKit

struct GameResult: Codable {
    let date: Date
    let correctAnswers: Int
    let reward: Int
}
