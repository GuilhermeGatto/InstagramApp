//
//  StoriesView.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

import SwiftUI

struct StoriesView: View {
 
    var body: some View {
        VStack(alignment: .center) {
            ScrollView(.horizontal,
                       showsIndicators: false) {
                HStack {
                    ForEach(1..<4) { _ in
                        UserProfileView()
                    }
                }
            }
            Divider()
        }
        .frame(height: 100)
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
            .previewLayout(.sizeThatFits)
    }
}
