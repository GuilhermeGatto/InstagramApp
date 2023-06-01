//
//  ContentView.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username: String = ""
    @State private  var password: String = ""

    @EnvironmentObject var viewModel: LoginViewModel

    var body: some View {
        ZStack {
            
            Color.theme.background
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Welcome to Instagram 📷")
                    .font(.title)
                    .foregroundColor(Color.theme.accent)
                Text("Explore our feed and share your experiences!!")
                    .font(.headline)
                    .foregroundColor(Color.theme.accent)
                
                TextField("username", text: $username)
                    .padding(10)
                    .overlay{
                        Rectangle()
                            .stroke(style: .init(lineWidth: 2,
                                                 lineCap: .round,
                                                 lineJoin: .round))
                            .cornerRadius(20)
                    }
                    .padding(.horizontal, 40)
                    .multilineTextAlignment(.center)
                    
                
                SecureField("password", text: $password)
                    .padding(10)
                    .overlay{
                        Rectangle()
                            .stroke(style: .init(lineWidth: 2,
                                                 lineCap: .round,
                                                 lineJoin: .round))
                            .cornerRadius(20)
                    }
                    .padding(.horizontal, 40)
                    .multilineTextAlignment(.center)
                    
                Button {
                    viewModel.doLogin()
                } label: {
                    Text("log in")
                        .padding()
                        .padding(.horizontal)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
