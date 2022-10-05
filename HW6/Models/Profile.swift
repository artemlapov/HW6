//
//  Profile.swift
//  HW6
//
//  Created by Artem Lapov on 05.10.2022.
//

struct Bio {
    let photo: String
    let name: String
    let surname: String
    let age: Int
    let gender: Gender
    let profession: String
    let citizenship: String

    let experienceDescription: String

    let email: String
    let phoneNumber: String
    let instagramAccount: String

    static func getBio(ofAccountID accountID: Int) -> Bio {
        if accountID == 12345 {
            return Bio(
                photo: "🧕🏽",
                name: "Artem",
                surname: "LAPOV",
                age: 34,
                gender: .nonbinary,
                profession: "Lawyer",
                citizenship: "Russia",
                experienceDescription: "I have two degrees: law and public relations. I worked as a lawyer and an attorney for more than 10 years. And I also managed some human rights projects. I was kicked out of Russia because of this. I decided to change the field of activity, studied Python and SQL, looking for myself. In the end I decided to become an iOS developer. At first I studied open courses on YouTube, and now I am happy to study at your school.",
                email: "artemlapov@me.com",
                phoneNumber: "+7 923 403 7333",
                instagramAccount: "@artemlapov"
            )
        } else {
            return Bio(
                photo: "",
                name: "",
                surname: "",
                age: 0,
                gender: .male,
                profession: "",
                citizenship: "",
                experienceDescription: "",
                email: "",
                phoneNumber: "",
                instagramAccount: ""
            )
        }
    }
}

enum Gender: String {
    case male = "Male"
    case female = "Female"
    case nonbinary = "Non-binary"
    case transgender = "Transgender"
    case genderqueer = "Genderqueer"
    case agender = "Agender"
    case thirdGender = "Third Gender"
    case twoSpirit = "Two-spirit"
    case noneOfThese = "None of these"
}

let userID = User.getUser()
let userProfile = Bio.getBio(ofAccountID: userID.accountID)
