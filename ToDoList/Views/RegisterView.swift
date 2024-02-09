//
//  RegisterView.swift
//  ToDoList
//
//  Created by Alejandra Coeto on 04/02/24.
//

import SwiftUI

struct RegisterView: View {

    @StateObject var viewModel = RegisterModel()

    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing to do's", angle: -15, background: .orange)
            
            Form {
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                TextField("Email adress", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create account", background: .green) {
                    viewModel.register()
                }
            }
            .offset(y: -50)
            
            Spacer()
        }
        
        
        
       
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
