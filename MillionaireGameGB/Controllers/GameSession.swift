//
//  GameSession.swift
//  MillionaireGameGB
//
//  Created by Евгений Доброволец on 31.05.2022.
//

import Foundation

class GameSession {
    private var totalQuestions: Int
    private var correctAnsvers: Int = 0
    private var isStoppedByGamer = false
    private var rewards = [50000, 100000, 250000, 500000, 1000000]
    private var reward: Int {
        if isStoppedByGamer && correctAnsvers > 0 || totalQuestions == correctAnsvers {
            return rewards[correctAnsvers-1]
        } else {
            return 0
        }
    }
    
    init(totalQuestions: Int) {
        self.totalQuestions = totalQuestions
    }
    
    func calcReward() -> Int {
        return correctAnsvers > 0 ? rewards[correctAnsvers-1] : 0
    }
}


extension GameSession: GameDataDelegate {
    func increaseCorrectAnswer() {
        self.correctAnsvers += 1
    }
    
//    func elevateCorrectAnswer() {
//        self.correctAnsvers += 1
//    }
    
    func getReward() -> Int {
        return self.rewards[correctAnsvers-1]
    }
    
    func stopByUser() {
        self.isStoppedByGamer = true
    }
    
    func saveResult() {
        DispatchQueue.global().async {
            let newResult = GameResult(date: Date(), correctAnswers: self.correctAnsvers, reward:
                self.reward)
            let resultsCaretaker = ResultsCaretaker()
            var results = resultsCaretaker.load() ?? []
            results.append(newResult)
            resultsCaretaker.save(items: results)
        }
    }
}
