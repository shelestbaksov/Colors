//
//  ViewController.swift
//  Colors
//
//  Created by Leysan Latypova on 06.01.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet private var colorView: UIView!
    
    @IBOutlet private var redLabel: UILabel!
    @IBOutlet private var greenLabel: UILabel!
    @IBOutlet private var blueLabel: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    @IBOutlet var redSliderValueTextField: UITextField!
    @IBOutlet var greenSliderValueTextField: UITextField!
    @IBOutlet var blueSliderValueTextField: UITextField!
    
    var inputColor: UIColor!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        setNewValues()
        changeColor()
        updateValueOfLabels()
        changeValueOfSliderTextField()
    }

    private func changeColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        changeValueOfSliderTextField()
    }
    
    private func updateValueOfLabels(){
        redLabel.text = String(format:"%.2f", redSlider.value)
        greenLabel.text = String(format:"%.2f", greenSlider.value)
        blueLabel.text = String(format:"%.2f", blueSlider.value)

    }
    
    private func changeValueOfSliderTextField() {
        redSliderValueTextField.text = redLabel.text
        greenSliderValueTextField.text = greenLabel.text
        blueSliderValueTextField.text = blueLabel.text
    }
    
    private func setNewValues() {
        let colors = inputColor.rgba
        redSlider.value = Float(colors.red)
        greenSlider.value = Float(colors.green)
        blueSlider.value = Float(colors.blue)
    }

    @IBAction private func rgbSliderChanged(_ sender: Any) {
        redLabel.text = String(format:"%.2f", redSlider.value)
        greenLabel.text = String(format:"%.2f", greenSlider.value)
        blueLabel.text = String(format:"%.2f", blueSlider.value)
        changeColor()
    }
    
    @IBAction func doneButtonPressed() {
        delegate.setNewBackgroundColor(colorView.backgroundColor ?? .red)
        dismiss(animated: true)
    }
    
}

extension UIColor {
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        return (red, green, blue, alpha)
    }
}
    
