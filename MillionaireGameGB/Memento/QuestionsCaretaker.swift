//
//  QuestionsCaretaker.swift
//  MillionaireGameGB
//
//  Created by Евгений Доброволец on 07.06.2022.
//

import Foundation

class QuestionsCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    private let key = "questions"
    
    func save(items: [Question]) {
        do {
            let data = try encoder.encode(items)
            UserDefaults.standard.setValue(data, forKey: key)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func load() -> [Question]? {
        guard let data = UserDefaults.standard.data(forKey: key) else { return nil }
        
        do {
            return try decoder.decode([Question].self, from: data)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
