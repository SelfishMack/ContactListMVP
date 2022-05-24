//
//  Person.swift
//  ContactListMVP
//
//  Created by Владимир on 23.05.2022.
//

import Foundation

struct Person {
    let name: String
    var surname: String?
    let phone: String
    
    
    init(name: String, phone: String) {
        self.name = name
        self.phone = phone
    }
    
    init(name: String, surname: String, phone: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
    }
}

extension Person: Equatable {
    static func ==(lhs: Person, rhs: Person) -> Bool {
        lhs.phone == rhs.phone && lhs.name == rhs.name
    }
}

