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
    
    static func fetchComment(forPost postId: String, completion: @escaping([Comment]) -> Void) {
        var comments = [Comment]()
        let query = COLLECITON_POSTS.document(postId).collection("comments").order(by: "timestamp", descending: true)

        
        query.addSnapshotListener { (snapshot, error) in
            snapshot?.documentChanges.forEach({  change in
                if change.type == .added {
                    let data = change.document.data()
                    let comment = Comment(dictionary: data)
                    comments.append(comment)
                }
            })
            
            completion(comments)
        }
        
    }
}
