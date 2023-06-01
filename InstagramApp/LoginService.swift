//
//  LoginService.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

import SwiftUI
import Combine

class LoginServie {
    
    @Published var userLogged: UserLogged? = nil
    
    var cancellable: AnyCancellable?
    
    func login() {
        
        guard let url = URL(string: "http://localhost:3000/login") else { return }
        
        cancellable = NetworkManager.download(url: url)
            .decode(type: UserLogged.self, decoder: JSONDecoder())
            .sink { (result) in
                switch result {
                case .failure(let error):
                    print("some error occured: => \(error.localizedDescription)")
                default:
                    break
                }
            } receiveValue: { [weak self] userLoggedReceived in
                self?.userLogged = userLoggedReceived
                self?.cancellable?.cancel()
                print("success => \(userLoggedReceived)")
            }
    }
    
    
}
