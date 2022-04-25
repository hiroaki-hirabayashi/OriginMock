//
//  OnbodingProgress.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/26.
//

import Foundation

/// オンボーディングの進捗
struct OnbodingProgress {
    /// ログイン前サービス紹介が完了したか
    var completeServiceIntroduction: Bool
    /// コンテンツ紹介が完了したか
    var completeContentIntroduction: Bool
    /// カウンセリングが完了したか
    var completeCounseling: Bool
    /// ホーム紹介が完了したか
    var completeHomeIntroduction: Bool
}
