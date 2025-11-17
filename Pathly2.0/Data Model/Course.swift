//
//  Course.swift
//  
//
//  Created by Namya Singh on 11/12/25.
//

import Foundation

struct Course {
    var id: String
    var name: String
    var code: String
    var instructor: String
    var semester: String
    
    init(id: String = UUID().uuidString, name: String, code: String, instructor: String, semester: String) {
        self.id = id
        self.name = name
        self.code = code
        self.instructor = instructor
        self.semester = semester
    }
}
