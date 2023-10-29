//
//  LoginPresenter.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import Foundation

protocol LoginViewOutput: AnyObject {
    func userDidPressLogin(_ username: String)
}

final class LoginPresenter {
    weak var view: LoginViewInput?
    var successLoginBlock: (()->Void)?
    var appState: AppState

    init(_ appState: AppState) {
        self.appState = appState
    }
}

extension LoginPresenter: LoginViewOutput {
    func userDidPressLogin(_ username: String) {
        appState.username = username
        successLoginBlock?()
    }
}
