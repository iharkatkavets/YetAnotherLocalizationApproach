//
//  LoginPresenter.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import Foundation

protocol LoginViewOutput: AnyObject {
    func userDidPressLogin()
}

class LoginPresenter {
    weak var view: LoginViewInput?
    var successLoginBlock: (()->Void)?

    init() {
    }

}

extension LoginPresenter: LoginViewOutput {
    func userDidPressLogin() {
        successLoginBlock?()
    }
}
