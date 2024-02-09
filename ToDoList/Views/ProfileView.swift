//
//  ProfileView.swift
//  ToDoList
//
//  Created by Alejandra Coeto on 04/02/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
