//
//  ToDoListModel.swift
//  ToDoList
//
//  Created by Alejandra Coeto on 04/02/24.
//

import Foundation

class ToDoListModel: ObservableObject {
    @Published var showingNewItemView: Bool = false
    init() {}
    
    func delete(item: ToDoListItem) {
        
    }
    
}
