//
//  RoutingManager.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/19.
//

import SwiftUI

/// Routing
public class RoutingManager {
    /// Singleton
    public static let shared = RoutingManager()
    private var routingView = RoutingView()

    private init() {
    }

    /// 遷移case
    public enum RoutingState {
        // スプラッシュ
        case splash
//        // ホーム
//        case home
//        /// ログイン
//        ///
//        /// - next: 指定のある場合は、ログイン後のルーティング
//        case login(next: String? = nil)
//        // ログイン前
//        case serviceIntroduction
//        // オンボーディング(コンテンツ紹介)
//        case onboarding
//        // 新規会員登録
//        case newMemberRegist
//        // カウンセリング
//        case counseling
//        // ホーム準備
//        case homeLoding
//        // URL Scheme
//        case passwordReminder
    }

    /// rootViewの設定
    public func getRouteView() -> some View {
        return routingView
    }

    /// 画面遷移処理
    public func setRoutingState(_ state: RoutingState, transition: AnyTransition? = nil, animation: Animation = .default) {
        self.routingView.viewModel.changeRoutingStatus(state: state, transition: transition, animation: animation)
    }
}
