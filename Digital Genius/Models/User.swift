//
//  User.swift
//  Digital Genius
//
//  Created by Hugo Peyron on 18/03/2023.
//

import Foundation
import FirebaseFirestore

struct User: Identifiable, Codable {
    var id = UUID()
    let username: String
    let email: String
    let password: String
    
    
    init (username: String, email: String, password: String){
        self.username = username
        self.email = email
        self.password = password
    }
    
}
