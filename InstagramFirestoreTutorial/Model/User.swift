//
//  User.swift
//  InstagramFirestoreTutorial
//
//  Created by eriwalte on 5/8/21.
//

import Foundation
import Firebase


struct User {
    let fullname: String
    let username: String
    let email: String
    let uid: String
    let profileImageUrl: String
    
    var stats: UserStats!
    
    var isFollowed = false
    
    var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == uid}
    
    init(dictionary: [String: Any]) {
        self.email = dictionary["email"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        
        self.stats = UserStats(followers: 0, following: 0, posts: 0)
    }
}

struct UserStats {
    let followers: Int
    let following: Int
    let posts: Int
}


