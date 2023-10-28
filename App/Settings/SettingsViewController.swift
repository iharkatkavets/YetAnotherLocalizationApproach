//
//  SettingsViewController.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import UIKit

protocol SettingsViewInput: AnyObject {
}

class SettingsViewController: UIViewController {
    var presenter: SettingsViewOutput?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didPressLogout(_ button: UIButton) {
        
    }
}

extension SettingsViewController: SettingsViewInput {
}
