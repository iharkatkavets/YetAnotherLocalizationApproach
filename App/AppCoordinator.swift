//
//  AppCoordinator.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import UIKit

final class AppCoordinator {
    let window: UIWindow
    var navigationController: UINavigationController?
    private let appState: AppState
    
    init(window: UIWindow, appState: AppState) {
        self.window = window
        self.appState = appState
    }
    
    func start() {
        let viewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        let presenter = LoginPresenter(appState)
        
        viewController.presenter = presenter
        presenter.view = viewController
        
        presenter.successLoginBlock = routeToSettings

        navigationController = UINavigationController(rootViewController: viewController)
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        window.rootViewController = navigationController
    }
    
    private func routeToSettings() {
        let viewController = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
        let presenter = SettingsPresenter(appState)
        
        viewController.presenter = presenter
        viewController.appState = appState
        presenter.view = viewController
        
        presenter.logoutBlock = routeToLogin
        
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func routeToLogin() {
        navigationController?.popViewController(animated: true)
    }
}
