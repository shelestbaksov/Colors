//
//  ViewController.swift
//  Colors
//
//  Created by Leysan Latypova on 06.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
    }

    func changeColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func rgbSliderChanged(_ sender: Any) {
        redLabel.text = String(format:"%.1f", redSlider.value)
        greenLabel.text = String(format:"%.1f", greenSlider.value)
        blueLabel.text = String(format:"%.1f", blueSlider.value)
        changeColor()
    }
}
    
