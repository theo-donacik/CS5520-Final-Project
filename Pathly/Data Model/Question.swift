//
//  Question.swift
//  Pathly
//
//  Created by theo on 11/13/25.
//

import Foundation

struct Question: Codable{
    var title: String
    var description: String
    var askedBy: String
    var replies: [String]
    
    
    init(title: String, description: String, askedBy: String, replies: [String]) {
        self.title = title
        self.description = description
        self.askedBy = askedBy
        self.replies = replies
    }
}
