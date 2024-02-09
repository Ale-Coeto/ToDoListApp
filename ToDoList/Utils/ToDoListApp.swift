//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Alejandra Coeto on 04/02/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
