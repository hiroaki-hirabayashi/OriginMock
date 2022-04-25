//
//  TopRoutingUseCaseImpl.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/22.
//

import Foundation

protocol RoutingUseCase {
    // TODO: RoutingManager.RoutingState を返す
    // 外から受信したリンクのルーティングを取得する
    func getRoutingStateLink(link: String) -> RoutingManager.RoutingState

    /// 起動後のルーティングを取得する
    func getRoutingStateInitial() -> RoutingManager.RoutingState

    /// ログイン後のルーティングを取得する
    /// - Parameter next: 指定のある場合は、ログイン後のルーティング
    ///
    /// - 未ログインで外からリンクしてきた場合
    /// - オンボーディングが終わっていない場合
    func getRoutingStateAfterLogin(next: String?) -> RoutingManager.RoutingState

    /// 新規登録後のルーティングを取得する
    ///
    /// オンボーディングから来たか、ログイン画面から来たか
    func getRoutingStateAfterSignup() -> RoutingManager.RoutingState

    /// コンテンツ紹介後のルーティングを取得する
    ///
    /// 新規登録後が済んだか、済んでいないか
    func getRougingStateAfterContentsIntroduction() -> RoutingManager.RoutingState
}

final class RoutingUseCaseImpl: RoutingUseCase {
//    private let onbordingUserDefaultsRepository: OnbordingUserDefaultsRepository
//    private let sessionKeychainRepository: SessionKeychainRepository
//
//    init(
//        onbordingUserDefaultsRepository: OnbordingUserDefaultsRepository,
//        sessionKeychainRepository: SessionKeychainRepository
//    ) {
//        self.onbordingUserDefaultsRepository = onbordingUserDefaultsRepository
//        self.sessionKeychainRepository = sessionKeychainRepository
//    }

    // 外から受信
    func getRoutingStateLink(link: String) -> RoutingManager.RoutingState {
        // 未ログインの場合
//        if !sessionKeychainRepository.isLoggedIn() {
//            // TODO: リンクのルーティング
//            return .login(next: "TODO")
//        }

        // TODO: リンクのルーティング
        return .home
    }

    // swiftlint:disable opening_brace
    // 起動時
    func getRoutingStateInitial() -> RoutingManager.RoutingState {
        // Push通知はPermission取得で未設定の場合に画面表示される想定

        // TODO: オンボーディングの途中で離脱した場合どうするか
        // オンボーディングの進捗による分岐
//        let onbordingProgress = onbordingUserDefaultsRepository.getOnbodingProgress()
//        if !onbordingProgress.completeServiceIntroduction
//             || !onbordingProgress.completeContentIntroduction // なくなる想定
//            || !onbordingProgress.completeCounseling
//        {
//            return .serviceIntroduction
//        }
        if true {
            return .serviceIntroduction
        }
        // ホーム画面紹介と歩数取得許可要求は .homeLoadingから遷移しなくても表示される
        // else if !onbordingProgress.completeHomeIntroduction { }

        // // 未ログイン　ログイン画面は不要
        // if !sessionKeychainRepository.isLoggedIn() {
        //     return .login(next: nil)
        // }

        // ホーム画面へ
        return .home
    }

    // ログイン後
    func getRoutingStateAfterLogin(next: String?) -> RoutingManager.RoutingState {
//        // TODO: ログインユーザーが未カウンセリングだったら、カウンセリングへ。(確認方法は不明)
//        let doneCounseling = true
//        var progress = onbordingUserDefaultsRepository.getOnbodingProgress()
//        // アプリインストール後にログインした場合、完了済みとみなす
//        progress.completeContentIntroduction = true
//        if !doneCounseling {
//            onbordingUserDefaultsRepository.setOnbodingProgress(progress: progress)
//            return .counseling
//        } else {
//            // カウンセリング済みの場合は、オンボーディング完了済みとみなして通常の遷移
//            progress.completeCounseling = true
//            progress.completeHomeIntroduction = true
//            onbordingUserDefaultsRepository.setOnbodingProgress(progress: progress)
//        }
//
//        // swiftlint:disable unused_optional_binding
//        if let _ = next {
//            // TODO: ログイン後のルーティング (リンク)
//        }

        return .home
    }

    // 会員登録後
    func getRoutingStateAfterSignup() -> RoutingManager.RoutingState {
        //        let onbording = onbordingUserDefaultsRepository.getOnbodingProgress()
        //        if !onbording.completeContentIntroduction {
        //            // コンテンツ紹介が未だ
        //            return .onboarding
        //        }

        // 基本はカウンセリングへ
//        return .counseling
        return .home
    }

    // コンテンツ紹介後
    func getRougingStateAfterContentsIntroduction() -> RoutingManager.RoutingState {
//        if sessionKeychainRepository.isLoggedIn() {
//            // 会員登録済み
//            return .counseling
//        }
//
//        // 基本は会員登録へ
//        return .newMemberRegist
        return .home
    }
}
