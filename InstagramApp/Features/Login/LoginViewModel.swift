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
    @Published var isLoading = false
    
    private var service = LoginServie()
    private var cancellable = Set<AnyCancellable>()
    
    func doLogin() {
        isLoading = true
        service.login()
        
        service.$userLogged
            .sink { [weak self] (returnedValue) in
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self?.isLoading = false
                    self?.userLogged = returnedValue
                }
            }
            .store(in: &cancellable)
        
    }
    
    func doLogout() {
        userLogged = nil
    }
    
    
}
