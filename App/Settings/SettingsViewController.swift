//
//  SettingsViewController.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import UIKit

protocol SettingsViewInput: AnyObject {
}

final class SettingsViewController: UIViewController {
    var presenter: SettingsViewOutput?
    @IBOutlet var welcomeLabel: UILabel?
    @IBOutlet var logoutButton: UIButton?
    var appState: AppState?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let username = appState?.username {
            welcomeLabel?.text = String(format: L.Settings.WelcomeLabelFmt, username)
        }
        logoutButton?.setTitle(L.Settings.ButtonLogoutTitle, for: .normal)
    }
    
    @IBAction func didPressLogout(_ button: UIButton) {
        presenter?.userDidPressLogout()
    }
}

extension SettingsViewController: SettingsViewInput {
}
