//
//  UserProfileView.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

import SwiftUI

struct UserProfileView: View {
    
    @State var hasStoriesUnwatched = true
    @State var isUserAvatar = true
    @State var hasStories = true
    
    var profileImageName: String = "profileImage"
    var username: String = "username"

    var body: some View {
        ZStack {
            
            if !hasStories && isUserAvatar {
                ZStack {
                    Text("+")
                        .frame(width: 20, height: 20)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .overlay {
                            Circle().stroke(style: .init(lineWidth: 2, lineCap: .round, lineJoin: .round))
                        }
                        .offset(x: 15, y: 5)
                    
                }
                .zIndex(2.0)
            }
            
            VStack {
                Image(profileImageName)
                    .resizable()
                    .frame(width: 50)
                    .aspectRatio(1,
                                 contentMode: ContentMode.fit)
                    .clipShape(Circle())
                    .overlay {
                        if hasStoriesUnwatched {
                            Circle()
                                .trim(from: 0, to: 1)
                                .stroke(getGradient(),
                                        style: StrokeStyle(lineWidth: 2,
                                                           lineCap: .round,
                                                           lineJoin: .round))
                        } else {
                            Circle()
                                .trim(from: 0, to: 1)
                                .stroke(getGradient(),
                                        style: StrokeStyle(lineWidth: 2,
                                                           lineCap: .round,
                                                           lineJoin: .round))
                        }
                    }
                
                Text(username)
                    .font(.caption)
            }
            
        }
    }
    
    
    func getGradient() -> AngularGradient{
        return AngularGradient(
           gradient: Gradient(colors: hasStoriesUnwatched ? [.pink, .yellow, .orange] : [Color.theme.accent]),
           center: .center,
           startAngle: .degrees(270),
           endAngle: .degrees(0))
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
