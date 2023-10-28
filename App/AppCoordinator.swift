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
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let viewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        let presenter = LoginPresenter()
        
        viewController.presenter = presenter
        presenter.view = viewController

        navigationController = UINavigationController(rootViewController: viewController)
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        window.rootViewController = navigationController
    }
}
