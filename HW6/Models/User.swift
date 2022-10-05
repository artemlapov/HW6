//
//  User.swift
//  HW6
//
//  Created by Artem Lapov on 05.10.2022.
//

struct User {
    let login: String
    let password: String
    let accountID: Int

    static func getUser() -> User {
        User(login: "User", password: "Password", accountID: 12345)
    }
}
