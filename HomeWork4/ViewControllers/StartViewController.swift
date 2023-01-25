//
//  StartViewController.swift
//  HomeWork4
//
//  Created by Kirill Taraturin on 21.01.2023.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func getColor(_ color: UIColor)
}

class StartViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.settingsVCViewColor = view.backgroundColor
        settingsVC.delegate = self
    }
    
    @IBAction func goButtonPressed() {
        performSegue(withIdentifier: "goToSettingsVC", sender: nil)
    }
}

extension StartViewController: SettingsViewControllerDelegate {
    func getColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}

    

