//
//  SettingsViewController.swift
//  MillionaireGameGB
//
//  Created by Евгений Доброволец on 07.06.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var difficultyControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch Game.shared.difficulty {
        case .hard:
            difficultyControl.selectedSegmentIndex = 1
        default:
            difficultyControl.selectedSegmentIndex = 0
        }
    }
    
    @IBAction func difficultyChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 1:
            Game.shared.difficulty = .hard
        default:
            Game.shared.difficulty = .easy
        }
    }
    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
