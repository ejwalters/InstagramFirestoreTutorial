//
//  CommentService.swift
//  InstagramFirestoreTutorial
//
//  Created by eriwalte on 5/12/21.
//

import Firebase

struct CommentService {
    
    static func uploadComment(comment: String, postID: String, user: User, completion: @escaping(FirestoreCompletion)) {
        
        let data: [String: Any] = ["uid": user.uid, "comment": comment, "timestamp": Timestamp(date:Date()), "profileImageUrl": user.profileImageUrl]
        
        COLLECITON_POSTS.document(postID).collection("comments").addDocument(data: data, completion: completion)
        
    }
    
    static func fetchComment() {
        
    }
}
