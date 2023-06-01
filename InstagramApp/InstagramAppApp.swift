//
//  InstagramAppApp.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

import SwiftUI

@main
struct InstagramAppApp: App {
    
    @StateObject var loginVM = LoginViewModel()
    
    @State private var isLoading = false
    
    var body: some Scene {
        WindowGroup {
            if loginVM.userLogged == nil {
                if loginVM.isLoading {
                    LoadingView()
                } else {
                    LoginView()
                        .environmentObject(loginVM)
                }
            } else {
                InstagramTabApp()
                    .environmentObject(loginVM)
            }
        }
    }
}
