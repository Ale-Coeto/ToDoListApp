//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Alejandra Coeto on 04/02/24.
//

import SwiftUI
import FirebaseFirestore

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    private let userId:String 
    
    init(userId: String) {
        self.userId = userId
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) {
                    item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(item: item)
                            }
                            .background(Color.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "tWTvhPMkq0QILZLcMyQRQsNVbqV2")
    }
}
