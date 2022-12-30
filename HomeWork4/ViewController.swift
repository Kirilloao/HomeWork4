//
//  ViewController.swift
//  HomeWork4
//
//  Created by Kirill Taraturin on 28.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var colorView: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupValueLabels()
        colorView.layer.cornerRadius = 10
        
        setupSliders(redSlider, colorForThumb: .red, colorForTrack: .red)
        setupSliders(greenSlider, colorForThumb: .green, colorForTrack: .green)
        setupSliders(blueSlider, colorForThumb: .blue, colorForTrack: .blue)
    }

   // MARK: IBAction
    
    @IBAction func redSliderAction() {
        redValueLabel.text = "\(round(redSlider.value * 100) / 100)"
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0.5)
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = "\(round(greenSlider.value * 100) / 100)"
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0.5)
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = "\(round(blueSlider.value * 100) / 100)"
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0.5)
    }
    
    // MARK: SetupLabels
    
    private func setupValueLabels() {
        redValueLabel.text = String(redSlider.value)
        redValueLabel.font = UIFont.systemFont(ofSize: 15)
        
        greenValueLabel.text = String(greenSlider.value)
        greenValueLabel.font = UIFont.systemFont(ofSize: 15)
        
        blueValueLabel.text = String(blueSlider.value)
        blueValueLabel.font = UIFont.systemFont(ofSize: 15)
    }
   
    
    // MARK: SetupSliders
    
    private func setupSliders(_ slider: UISlider, colorForThumb: UIColor, colorForTrack: UIColor) {
        slider.value = 0.5
        slider.thumbTintColor = colorForThumb
        slider.minimumTrackTintColor = colorForTrack
    }
}


