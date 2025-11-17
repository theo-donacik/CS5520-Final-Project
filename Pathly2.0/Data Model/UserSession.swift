//
//  UserSession.swift
//  Pathly2.0
//
//  Created by Namya Singh on 11/13/25.
//

import Foundation



class UserSession {
    static let shared = UserSession()
    
    var currentUser: User?     // Stores signed user
    
    private init() {}
}
