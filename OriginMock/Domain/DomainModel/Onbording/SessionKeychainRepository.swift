//
//  SessionKeychainRepository.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/26.
//

import Foundation

/// セッション管理に関するリポジトリ
public protocol SessionKeychainRepository {
    /// セッションIDを取得する
    /// セッションがない場合は空文字を返す
    func getSessionID() -> String
    /// セッションIDを保存する
    func saveSessionID(sessionID: String)
    /// セッションIDを削除する
    func clearSessionID()
    /// ログイン済みか
    func isLoggedIn() -> Bool
}
