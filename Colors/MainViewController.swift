//
//  WelcomeViewController.swift
//  Colors
//
//  Created by Leysan Latypova on 18.01.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewBackgroundColor(_ color: UIColor)
}

class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return}
        settingsVC.inputColor = view.backgroundColor
        settingsVC.delegate = self
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewBackgroundColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
