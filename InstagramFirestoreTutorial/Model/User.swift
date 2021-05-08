//
//  User.swift
//  InstagramFirestoreTutorial
//
//  Created by eriwalte on 5/8/21.
//

import Foundation


struct User {
    let fullname: String
    let username: String
    let email: String
    let uid: String
    let profileImageUrl: String
    
    init(dictionary: [String: Any]) {
        self.email = dictionary["email"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}


