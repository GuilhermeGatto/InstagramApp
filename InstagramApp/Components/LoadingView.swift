//
//  LoadingView.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 01/06/23.
//

import SwiftUI

struct LoadingView: View {
    
    private let message: [String] = "carregando dados.."
        .uppercased()
        .map { String($0) }
    
    @State var animateIndicie: Int = 0
    
    private var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Color.theme.background
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("INSTAGRAM")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding()
                
                HStack {
                    
                    ForEach(message.indices) { indicie in
                        Text(message[indicie])
                            .font(.subheadline)
                            .padding(.horizontal, 1)
                            .offset(y: indicie == animateIndicie ? -5 : 0)
                    }
                }
            }
            .foregroundColor(Color.theme.accent)
        }
        .onReceive(timer) { _ in
            var total = message.count - 1
            
            if animateIndicie >= total {
                animateIndicie = 0
            }
            
            animateIndicie += 1
        }
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
