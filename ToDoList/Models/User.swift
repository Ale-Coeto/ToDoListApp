//
//  User.swift
//  ToDoList
//
//  Created by Alejandra Coeto on 04/02/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
    
}
