//
//  Assignment.swift
//  Pathly
//
//  Created by theo on 11/12/25.
//
import Foundation

struct Assignment: Codable{
    var title: String
    var description: String
    var due: Date
    
    
    init(title: String, description: String, due: Date) {
        self.title = title
        self.description = description
        self.due = due
    }
}
