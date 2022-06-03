//
//  MenuViewController.swift
//  MillionaireGameGB
//
//  Created by Евгений Доброволец on 31.05.2022.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var newGameButton: UIButton!
    @IBOutlet weak var resultsButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "gameSegue":
            if let vc = segue.destination as? GameViewController {
                let questions = generateQuestions()
                let session = GameSession(totalQuestions: questions.count)
                
                vc.questions = questions
                vc.gameDataDelegate = session
                Game.shared.session = session
            }
        case "resultsSegue":
            return
        default:
            return
        }
    }
    
    private func generateQuestions() -> [Question] {
        return [
            Question(question: "Какого языка программирования не существует?",
                     answers: ["Swift", "Java", "C#", "Colibri"],
                     correctAnswerIndex: 3
                    ),
            Question(question: "Как называется операционная система, которую устанавливают на MacBook?",
                     answers: ["SEO", "ISO", "MacOS", "Linux"],
                     correctAnswerIndex: 2
                    ),
            Question(question: "Что такое RAM в компьютерах?",
                     answers: ["Оперативная память", "Процессор", "Жесткий диск", "Блок питания"],
                     correctAnswerIndex: 0
                    ),
            Question(question: "Назовите самый мощный компьютер в мире по состоянию на 2021 год?",
                     answers: ["Электроника ИМ-02", "Fugaku", "Pentium 133", "HPC5"],
                     correctAnswerIndex: 1
                     ),
            Question(question: "Выберите язык квантового программирования:",
                     answers: ["Flipper", "Solter", "Quipper", "W++"],
                     correctAnswerIndex: 2
            ),
        ]
    }
    
    
    

}

