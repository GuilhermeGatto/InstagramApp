//
//  InstagramTabApp.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

import SwiftUI

struct InstagramTabApp: View {
    
    @State private var tabSelected = 0
   
    var body: some View {
        TabView(selection: $tabSelected) {
            HomeView()
                .tabItem {
                    Image(systemName: tabSelected == 0 ? "house.fill" : "house")
                }
                .tag(0)
                .toolbarBackground(Color.theme.background, for: .tabBar)
            
            Text("search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
                .toolbarBackground(Color.theme.background, for: .tabBar)
            
            Text("add content")
                .tabItem {
                    Image(systemName: "plus.app")
                }
                .tag(2)
                .toolbarBackground(Color.theme.background, for: .tabBar)
            
            Text("reels")
                .tabItem {
                    Image(systemName: "play.square")
                }
                .tag(3)
                .toolbarBackground(Color.theme.background, for: .tabBar)
            
            Text("profile")
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(4)
                .toolbarBackground(Color.theme.background, for: .tabBar)
                
        }
       
        .tint(Color.theme.accent)
    }
}

struct InstagramTabApp_Previews: PreviewProvider {
    static var previews: some View {
        InstagramTabApp()
    }
}
