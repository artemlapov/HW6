//
//  LogInDoneViewController.swift
//  HW6
//
//  Created by Artem Lapov on 02.10.2022.
//

import UIKit

final class LogInDoneViewController: UIViewController {

    @IBOutlet var welcomeMessageLabel: UILabel!

    var userNameTextField: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome, \(userNameTextField ?? "") 🥹"
    }

    @IBAction func logOutButton() {
    }


}
