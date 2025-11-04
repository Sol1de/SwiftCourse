//
//  ProfilViewModel.swift
//  swiftCourse
//
//  Created by DELMAS Olivier on 03/11/2025.
//

import SwiftUI

@Observable
class ProfilContent {
    var firstname: String
    var lastname: String
    var description: String
    var contact: Contact
    
    
    init(firstname: String, lastname: String, description: String, contact: Contact) {
        self.firstname = firstname
        self.lastname = lastname
        self.description = description
        self.contact = contact
    }
}
