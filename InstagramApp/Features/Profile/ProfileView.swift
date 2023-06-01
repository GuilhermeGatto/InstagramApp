//
//  ProfileView.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject private var loginVM: LoginViewModel
    
    var body: some View {
        ZStack {
            Color.theme.background
            Button("logout") {
                loginVM.doLogout()
            }
        }

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
