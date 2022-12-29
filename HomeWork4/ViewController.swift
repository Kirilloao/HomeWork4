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
    
    
    @IBOutlet var redColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var blueColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        setupTextColorLabels()
        
        redColorView.layer.cornerRadius = 10
        redColorView.backgroundColor = .white
        setupValueLabels()
    }

   // MARK: IBAction
    
    @IBAction func redSliderAction() {
        redValueLabel.text = "\(redSlider.value)"
        redColorView.backgroundColor = .red
        redColorView.backgroundColor = redColorView.backgroundColor?.withAlphaComponent(CGFloat(redSlider.value))
        
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = "\(greenSlider.value)"
        greenColorView.backgroundColor = .green
        greenColorView.backgroundColor = greenColorView.backgroundColor?.withAlphaComponent(CGFloat(greenSlider.value))
        
    }
    @IBAction func blueSliderAction() {
        blueValueLabel.text = "\(blueSlider.value)"
        blueColorView.backgroundColor = .blue
        blueColorView.backgroundColor = blueColorView.backgroundColor?.withAlphaComponent(CGFloat(blueSlider.value))
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
        blueTextLabel.text = "Blue:"
    }
    private func setupRedSlider() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.thumbTintColor = .red
        redSlider.minimumTrackTintColor = .red
    }
    private func setupGreenSlider() {
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.thumbTintColor = .green
        greenSlider.minimumTrackTintColor = .green
    }
    private func setupBlueSlider() {
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.thumbTintColor = .blue
        blueSlider.minimumTrackTintColor = .blue
    }
}


