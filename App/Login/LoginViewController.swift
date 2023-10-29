//
//  LoginViewController.swift
//  App
//
//  Created by Ihar Katkavets on 27/10/2023.
//

import UIKit

protocol LoginViewInput: AnyObject {
}

final class LoginViewController: UIViewController {
    var presenter: LoginViewOutput?
    @IBOutlet var usernameTextField: UITextField?
    @IBOutlet var passwordTextField: UITextField?
    @IBOutlet var loginButton: UIButton?
    @IBOutlet var containerView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField(usernameTextField, L.Login.TextFieldUsernamePlaceholder)
        setupTextField(passwordTextField, L.Login.TextFieldPasswordPlaceholder)
        setupLoginButton(loginButton)
        containerView.map { setupContainer($0) }
    }
    
    @IBAction func login(_ button: UIButton) {
        presenter?.userDidPressLogin(usernameTextField?.text ?? "")
    }
    
    private func setupLoginButton(_ button: UIButton?) {
        var configuration = UIButton.Configuration.plain()
        configuration.title = L.Login.ButtonLoginTitle
        configuration.baseForegroundColor = .white
        configuration.background.backgroundColor = #colorLiteral(red: 0.2745098039, green: 0.5294117647, blue: 1, alpha: 1)
        configuration.background.cornerRadius = 10
        button?.configuration = configuration
    }
    
    private func setupTextField(_ textField: UITextField?,
                                _ placeholder: String) {
        textField?.placeholder = placeholder
        textField?.tintColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.262745098, alpha: 0.6)
        textField?.layer.cornerRadius = 10
    }
    
    private func setupContainer(_ containerView: UIView) {
        let constraint = view.keyboardLayoutGuide.topAnchor.constraint(greaterThanOrEqualTo: containerView.bottomAnchor, constant: 54)
        constraint.isActive = true
    }
    
    @IBAction func hideKeyboardTap(_ button: UIButton) {
        view.endEditing(false)
    }
}

extension LoginViewController: LoginViewInput {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.tintColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.262745098, alpha: 1)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.tintColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.262745098, alpha: 0.6)
    }
}
