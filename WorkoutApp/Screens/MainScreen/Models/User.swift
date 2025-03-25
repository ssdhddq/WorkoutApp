//
//  User.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 14.03.2025.
//

import Foundation

struct User {
    let firstName: String
    let lastName: String
    let height: Int
    let weight: Int
    let image: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}
