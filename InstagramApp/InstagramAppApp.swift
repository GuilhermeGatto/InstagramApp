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
    
    var body: some Scene {
        WindowGroup {
            if loginVM.userLogged == nil {
                LoginView()
                    .environmentObject(loginVM)
            } else {
                InstagramTabApp()
                    .environmentObject(loginVM)
            }
        }
    }
}
