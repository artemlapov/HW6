//
//  ViewController.swift
//  HW6
//
//  Created by Artem Lapov on 01.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func forgotUserNameUIButtonTapped() {
        showAlert(withTitle: "Your name is:", andMessage: "User")
    }

    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Your password is:", andMessage: "Password")
    }

    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

extension ViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Understood", style: .default) { _ in
            self.passwordTextField.text = ""
            self.userNameTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

