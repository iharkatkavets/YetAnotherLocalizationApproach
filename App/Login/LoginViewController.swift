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

    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField?.placeholder = L.Login.TextFieldUsernamePlaceholder
        passwordTextField?.placeholder = L.Login.TextFieldPasswordPlaceholder
        loginButton?.setTitle(L.Login.ButtonLoginTitle, for: .normal)
        
    }
    
    @IBAction func login(_ button: UIButton) {
        presenter?.userDidPressLogin(usernameTextField?.text ?? "")
    }
}

extension LoginViewController: LoginViewInput {
}
