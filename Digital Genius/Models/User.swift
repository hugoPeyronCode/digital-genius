//
//  User.swift
//  Digital Genius
//
//  Created by Hugo Peyron on 18/03/2023.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let username: String
    let email: String
    let password: String
    let progess: [UUID: Float]
}
