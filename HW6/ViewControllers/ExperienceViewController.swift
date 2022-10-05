//
//  ExperienceViewController.swift
//  HW6
//
//  Created by Artem Lapov on 05.10.2022.
//

import UIKit

class ExperienceViewController: UIViewController {

    @IBOutlet var titleOfExperienceLabel: UILabel!
    @IBOutlet var descriptionOfExperienceTV: UITextView!

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
        titleOfExperienceLabel.text = "\(userProfile.name) \(userProfile.surname)"
        descriptionOfExperienceTV.text = userProfile.experienceDescription
        descriptionOfExperienceTV.backgroundColor = .clear
    }

}
