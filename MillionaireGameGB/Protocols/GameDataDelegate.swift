//
//  GameDataDelegate.swift
//  MillionaireGameGB
//
//  Created by Евгений Доброволец on 31.05.2022.
//

import Foundation


protocol GameDataDelegate: AnyObject {
    func increaseCorrectAnswer()
    func getReward() -> Int
    func stopByUser()
    func saveResult()
}
