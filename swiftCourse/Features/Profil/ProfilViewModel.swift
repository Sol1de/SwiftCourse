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
    
    
    init(firstname: String, lastname: String, description: String) {
        self.firstname = firstname
        self.lastname = lastname
        self.description = description
    }
}
