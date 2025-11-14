//
//  Group.swift
//  Pathly
//
//  Created by theo on 11/14/25.
//

import Foundation

struct Group: Codable{
    var name: String
    var location: String
    var members: [String]
    
    
    init(name: String, location: String, members: [String]) {
        self.name = name
        self.location = location
        self.members = members
    }
}
