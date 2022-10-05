//
//  ViewController.swift
//  HW6
//
//  Created by Artem Lapov on 01.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

    private let userArtem = User.getUser()

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logInDoneVC = segue.destination as? WelcomeViewController else { return }
        logInDoneVC.userNameTextField = userNameTextField.text
    }

    @IBAction func forgotUserNameUIButtonDidTapped() {
        showAlert(withTitle: "Your name is:", andMessage: "\(userArtem.login)")
    }

    @IBAction func forgotPasswordButtonDidTapped() {
        showAlert(withTitle: "Your password is:", andMessage: "\(userArtem.password)")
    }

    @IBAction func logInButtonDidTapped() {
        if userNameTextField.text != userArtem.login
            || passwordTextField.text != userArtem.password {
            showAlert(withTitle: "⛔️", andMessage: "Invalid login or password")
        }
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }

}

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Understood", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

