//
//  ViewController.swift
//  Colors
//
//  Created by Leysan Latypova on 06.01.2022.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private var colorView: UIView!
    
    @IBOutlet private var redLabel: UILabel!
    @IBOutlet private var greenLabel: UILabel!
    @IBOutlet private var blueLabel: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
    }

    private func changeColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction private func rgbSliderChanged(_ sender: Any) {
        redLabel.text = String(format:"%.1f", redSlider.value)
        greenLabel.text = String(format:"%.1f", greenSlider.value)
        blueLabel.text = String(format:"%.1f", blueSlider.value)
        changeColor()
    }
}
    
