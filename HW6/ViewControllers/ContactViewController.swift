//
//  ContactViewController.swift
//  HW6
//
//  Created by Artem Lapov on 05.10.2022.
//

import UIKit

class ContactViewController: UIViewController {

    private let primaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )

    private let secondaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }

}
