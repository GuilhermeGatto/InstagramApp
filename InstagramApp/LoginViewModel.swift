//
//  LoginViewModel.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {

    @Published var userLogged: UserLogged?
    
    private var service = LoginServie()
    private var cancellable = Set<AnyCancellable>()
    
    func doLogin() {
        service.login()
        
        service.$userLogged
            .sink { [weak self] (returnedValue) in
                self?.userLogged = returnedValue
            }
            .store(in: &cancellable)
    }
    
    
}
