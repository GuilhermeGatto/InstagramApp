//
//  NetworkManager.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

import Foundation
import Combine

class NetworkManager {
    static func download(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap { (output) -> Data in 
                guard let response = output.response as? HTTPURLResponse,
                      response.statusCode >= 200 &&  response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                return output.data
            }
            .receive(on:  DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
