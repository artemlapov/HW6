//
//  ViewController.swift
//  HW6
//
//  Created by Artem Lapov on 01.10.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logInDoneVC = segue.destination as? LogInDoneViewController else { return }
        logInDoneVC.userNameTextField = userNameTextField.text
    }

    @IBAction func forgotUserNameUIButtonTapped() {
        showAlert(withTitle: "Your name is:", andMessage: "User")
    }

    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Your password is:", andMessage: "Password")
    }

    @IBAction func logOutButtonDidTapped(for segue: UIStoryboardSegue) {
        dismiss(animated: true)
        self.userNameTextField.text = ""
        self.passwordTextField.text = ""
    }

}

extension MainViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Understood", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

