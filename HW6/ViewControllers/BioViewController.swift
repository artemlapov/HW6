//
//  BioViewController.swift
//  HW6
//
//  Created by Artem Lapov on 05.10.2022.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var titleOfBioLabel: UILabel!
    @IBOutlet var photoLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var citizenshipLabel: UILabel!

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
        titleOfBioLabel.text = "\(userProfile.name) \(userProfile.surname)"
        photoLabel.text = userProfile.photo
        ageLabel.text = "\(userProfile.age) years old"
        genderLabel.text = "\(userProfile.gender.rawValue) person"
        citizenshipLabel.text = "Citizenship: \(userProfile.citizenship)"
        professionLabel.text = userProfile.profession
    }

}
