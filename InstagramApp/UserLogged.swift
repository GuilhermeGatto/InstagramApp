//
//  UserLogged.swift
//  InstagramApp
//
//  Created by Guilherme Gatto on 31/05/23.
//

struct UserLogged: Codable {
    
    // MARK: Auth Infos
    var token: String
    
    // MARK: User Personal Infos
    var user: InstagramUser
    
    // MARK: User Instagram Infos
    var followers: [InstagramUser]?
    var following: [InstagramUser]?
    
}

struct InstagramUser: Codable {
    // MARK: User Personal Infos
    var username: String
    var name: String 
    var email: String

    var hasStoriesUnwatched: Bool?
    var posts: InstagramPost?
    var likes: [String]?
}

struct InstagramPost: Codable {
    var imageURL: String
    var description: String
    var date: String?
    var comments: [Comment]?
    var lieks: [InstagramUser]?
}

struct Comment: Codable {
    var person: InstagramUser?
    var comment: String?
    var date: String?
}
