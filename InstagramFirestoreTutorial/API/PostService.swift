//
//  PostService.swift
//  InstagramFirestoreTutorial
//
//  Created by eriwalte on 5/10/21.
//

import UIKit
import Firebase

struct PostService {
    
    static func uploadPost(caption: String, image: UIImage, completion: @escaping(FirestoreCompletion)) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        ImageUploader.uploadImage(image: image) { imageUrl in
            let data = ["caption": caption,
                        "timestamp": Timestamp(date: Date()),
                        "likes": 0,
                        "imageUrul": imageUrl,
                        "ownerUid": uid] as [String : Any]
            
            COLLECITON_POSTS.addDocument(data: data, completion: completion)
        }
    }
}
