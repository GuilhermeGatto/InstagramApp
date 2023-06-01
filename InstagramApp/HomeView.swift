//
//  HomeView.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var commnetText: String = ""
   
    var body: some View {
        ZStack {
            Color.theme.background
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                StoriesView()

                FeedPost(commnetText: $commnetText)
                FeedPost(commnetText: $commnetText)
                FeedPost(commnetText: $commnetText)
                FeedPost(commnetText: $commnetText)
            }
        }
    }
}


struct HomeVIew_Previews: PreviewProvider {
    static var previews: some View {
        InstagramTabApp()
            .preferredColorScheme(.light)
    }
}

struct FeedPost: View {
    
    @Binding var commnetText: String
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                Text("akaty_novel")
                Spacer()
                Image(systemName: "ellipsis")
                
            }
            .padding(.horizontal)
            .frame(height: 30)
            
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
            
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "heart.fill")
                    Image(systemName: "bubble.right")
                    Image(systemName: "paperplane")
                    Spacer()
                    Image(systemName: "tag")
                }
                
                
                HStack {
                    Circle()
                    Text("Liked by somePeople and 32.112 others")
                        .font(.caption2)
                }
                .padding(.top, 4)
                .frame(height: 20)
                
                HStack(alignment: .top) {
                    Text("akaty_novel")
                        .font(.caption2)
                        .fontWeight(.bold)
                    
                    Text("some black image to close your eyes and reflect!! ")
                        .font(.caption2)
                    
                }
                
                HStack(alignment: .top) {
                    Text("View all comments")
                        .font(.caption2)
                }
                
                HStack(alignment: .top) {
                    Text("arturoNobre")
                        .font(.caption2)
                        .fontWeight(.bold)
                    
                    Text("great message aka!! 🥰 ")
                        .font(.caption2)
                    
                }
                
                HStack(alignment: .top) {
                    Text("c123_dj")
                        .font(.caption2)
                        .fontWeight(.bold)
                    
                    Text("♥️♥️♥️♥️♥️")
                        .font(.caption2)
                }
            }
            .padding(.horizontal)
            
            HStack {
                Circle()
                TextField("add comment", text: $commnetText)
                    .font(.caption2)
            }
            .padding(.horizontal)
            .frame(height: 20)
            
            HStack() {
                Text("6 days ago")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.horizontal)
            .frame(height: 20)
        }
    }
}
