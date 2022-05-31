//
//  ResultsCarataker.swift
//  MillionaireGameGB
//
//  Created by Евгений Доброволец on 31.05.2022.
//

import Foundation

class ResultsCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    private let key = "results"
    
    func save(items: [GameResult]) {
        do {
            let data = try encoder.encode(items)
            UserDefaults.standard.setValue(data, forKey: key)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func load() -> [GameResult]? {
        guard let data = UserDefaults.standard.data(forKey: key) else { return nil }
        
        do {
            return try decoder.decode([GameResult].self, from: data)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
