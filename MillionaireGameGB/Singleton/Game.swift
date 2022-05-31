//
//  Game.swift
//  MillionaireGameGB
//
//  Created by Евгений Доброволец on 31.05.2022.
//

import Foundation

class Game {
    public static var shared = Game()
    var session: GameSession?
    var numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.locale = Locale(identifier: "ru_RU")
        nf.numberStyle = .currency
        nf.usesGroupingSeparator = true
        nf.maximumFractionDigits = 0
        return nf
    }()
    
    private init() { }
}
