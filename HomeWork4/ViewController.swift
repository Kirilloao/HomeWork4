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
        setupValueLabels()
        
        redColorView.layer.cornerRadius = 10
        greenColorView.layer.cornerRadius = 10
        blueColorView.layer.cornerRadius = 10
    }

   // MARK: IBAction
    //round(number * 100) / 100
    @IBAction func redSliderAction() {
        redValueLabel.text = "\(round(redSlider.value * 100) / 100)"
        redColorView.backgroundColor = .red
        redColorView.backgroundColor = redColorView.backgroundColor?.withAlphaComponent(CGFloat(redSlider.value))
        
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = "\(round(greenSlider.value * 100) / 100)"
        greenColorView.backgroundColor = .green
        greenColorView.backgroundColor = greenColorView.backgroundColor?.withAlphaComponent(CGFloat(greenSlider.value))
        
    }
    @IBAction func blueSliderAction() {
        blueValueLabel.text = "\(round(blueSlider.value * 100) / 100)"
        blueColorView.backgroundColor = .blue
        blueColorView.backgroundColor = blueColorView.backgroundColor?.withAlphaComponent(CGFloat(blueSlider.value))
    }
    
    // MARK: SetupLabels
    
    private func setupValueLabels() {
        redValueLabel.text = String(redSlider.value)
        redValueLabel.font = UIFont.systemFont(ofSize: 15)
        redValueLabel.numberOfLines = 2
        greenValueLabel.text = String(greenSlider.value)
        greenValueLabel.font = UIFont.systemFont(ofSize: 15)
        blueValueLabel.text = String(blueSlider.value)
        blueValueLabel.font = UIFont.systemFont(ofSize: 15)
    }
    private func setupTextColorLabels() {
        redTextLabel.text = "Red:"
        redTextLabel.font = UIFont.systemFont(ofSize: 15)
        greenTextLabel.text = "Green:"
        greenTextLabel.font = UIFont.systemFont(ofSize: 15)
        blueTextLabel.text = "Blue:"
        blueTextLabel.font = UIFont.systemFont(ofSize: 15)
    }
    
    // MARK: SetupSliders
    
    private func setupRedSlider() {
        redSlider.value = 0.3
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.thumbTintColor = .red
        redSlider.minimumTrackTintColor = .red
    }
    private func setupGreenSlider() {
        greenSlider.value = 0.7
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.thumbTintColor = .green
        greenSlider.minimumTrackTintColor = .green
    }
    private func setupBlueSlider() {
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.thumbTintColor = .blue
        blueSlider.minimumTrackTintColor = .blue
    }
}


