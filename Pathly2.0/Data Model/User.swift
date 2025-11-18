//
//  User.swift
//  Pathly2.0
//
//  Created by Namya Singh on 11/13/25.
//

import Foundation

struct User {
    let username: String
    let firstName: String
    let lastName: String
    let dob: String
    let email: String
    let userType: String       

    var isInstructor: Bool {
        return userType == "Instructor"
    }
}

