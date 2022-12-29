//
//  ViewController.swift
//  HomeWork4
//
//  Created by Kirill Taraturin on 28.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redTextLabel: UILabel!
    @IBOutlet var greenTextLabel: UILabel!
    @IBOutlet var blueTextLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    
    @IBOutlet var changeColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        setupTextColorLabels()
        
        changeColorView.layer.cornerRadius = 10
        setupValueLabels()
    }

   // MARK: IBAction
    
    @IBAction func redSliderAction() {
        redValueLabel.text = "\(redSlider.value)"
        changeColorView.backgroundColor = .red
        

    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = "\(greenSlider.value)"
        changeColorView.backgroundColor = .green
        
    }
    @IBAction func blueSliderAction() {
        blueValueLabel.text = "\(blueSlider.value)"
        changeColorView.backgroundColor = .blue
    }
    
    // MARK: Setup
    
    private func setupValueLabels() {
        redValueLabel.text = String(redSlider.value)
        greenValueLabel.text = String(greenSlider.value)
        blueValueLabel.text = String(blueSlider.value)
    }
    private func setupTextColorLabels() {
        redTextLabel.text = "Red:"
        
        greenTextLabel.text = "Green:"
        greenTextLabel.
        blueTextLabel.text = "Blue:"
        
    }
    private func setupRedSlider() {
        redSlider.value = 1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.thumbTintColor = .red
        redSlider.minimumTrackTintColor = .red
    }
    private func setupGreenSlider() {
        greenSlider.value = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.thumbTintColor = .green
        greenSlider.minimumTrackTintColor = .green
    }
    private func setupBlueSlider() {
        blueSlider.value = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.thumbTintColor = .blue
        blueSlider.minimumTrackTintColor = .blue
    }
}


