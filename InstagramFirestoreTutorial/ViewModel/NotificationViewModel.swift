//
//  NotificationViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by eriwalte on 5/15/21.
//

import UIKit

struct NotificationViewModel {
    
    private let notification: Notification
    
    init(notification: Notification) {
        self.notification = notification
    }
    
    var postImageUrl: URL? { return URL(string: notification.postImageUrl ?? "") }
    
    var profileImageUrl: URL? { return URL(string: notification.userProfileImageUrl)}
    
}
