//
//  User.swift
//  AboutMe
//
//  Created by Vladimir on 30/08/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

struct UserApp {
    var userName: String = ""
    var userPassword: String = ""
}

extension UserApp {
    static func getLogInData() -> UserApp {
        return UserApp(userName: "Alexey", userPassword: "123321")
    }
}
