//
//  LoginView.swift
//  ToDoList
//
//  Created by Alejandra Coeto on 04/02/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginModel()
    
    var body: some View {
        NavigationView() {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things Done", angle: 15, background: .pink)
                
                
                // LoginForm
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Login", background: .blue) {
                        viewModel.login()
                    }
                    
                }
                .offset(y:-50)
                
                    VStack {
                        Text("New around here?")
                        
                        NavigationLink("Create an Account",
                                       destination: RegisterView())
                            
                    }
                    .padding(.bottom, 50)
                
                //
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}
