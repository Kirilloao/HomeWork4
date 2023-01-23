//
//  ViewController.swift
//  HomeWork4
//
//  Created by Kirill Taraturin on 28.12.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var settingsVCViewColor: UIColor!
    var delegate: SettingsViewControllerDelegate!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorView.layer.cornerRadius = 15
        
        setColor()
        
        colorView.backgroundColor = settingsVCViewColor
        
        setValue(for: redLabel, greenLabel, blueLabel)
        
        setupSliders(redSlider, colorForThumb: .red, colorForTrack: .red)
        setupSliders(greenSlider, colorForThumb: .green, colorForTrack: .green)
        setupSliders(blueSlider, colorForThumb: .blue, colorForTrack: .blue)
    }
    
    @IBAction func doneButtonDidTapped() {
        delegate.getColor(colorView.backgroundColor ?? UIColor.red)
        dismiss(animated: true)
    }
    
    @IBAction func rgbSliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redLabel.text = string(from: redSlider)
        case greenSlider:
            greenLabel.text = string(from: greenSlider)
        default:
            blueLabel.text = string(from: blueSlider)
        }
    }
   
    private func setupSliders(_ slider: UISlider, colorForThumb: UIColor, colorForTrack: UIColor) {
        slider.value = 0.5
        slider.thumbTintColor = colorForThumb
        slider.minimumTrackTintColor = colorForTrack
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = string(from: redSlider)
            case greenLabel:
                greenLabel.text = string(from: greenSlider)
            default:
                blueLabel.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}


