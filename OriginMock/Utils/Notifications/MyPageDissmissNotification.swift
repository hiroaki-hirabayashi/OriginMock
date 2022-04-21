//
//  MyPageDissmissNotification.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/22.
//

import Foundation

// TODO: - 要否の検討
struct MyPageDissmissNotification {
    private static let myPageDissmiss = Notification.Name("myPageDissmiss")

    static var onDissmiss: NotificationCenter.Publisher {
        NotificationCenter.default.publisher(for: myPageDissmiss)
    }

    static func notifyDissmiss() {
        let notification = Notification(name: myPageDissmiss)
        NotificationCenter.default.post(notification)
    }
}
