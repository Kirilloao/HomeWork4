//
//  StartViewController.swift
//  HomeWork4
//
//  Created by Kirill Taraturin on 21.01.2023.
//

import UIKit


class StartViewController: UIViewController {
    
    var newColor: UIColor!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.myColor = view.backgroundColor

    }
    
    
    @IBAction func goButtonPressed() {
        performSegue(withIdentifier: "goToSettingsVC", sender: nil)
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        view.backgroundColor = newColor
    }
}


    

