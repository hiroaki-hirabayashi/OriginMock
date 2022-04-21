//
//  SplashViewModel.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/22.
//

import Foundation

final class SplashViewModel: ObservableObject {
    // MARK: - property
    private let routingManager = RoutingManager.shared
    private let routingUseCase = TopRoutingUseCaseImpl()
//    private let pushNotificationPermissionUseCase = DIContainer.shared.getPushNotificationPermissionUseCase()

    /// 初回ユーザーの仮遷移フラグ
//    @Published var isFirstTime = false

    // MARK: - function

    func setRouting() {
        let routing = self.routingUseCase.getRoutingStateInitial()
        self.routingManager.setRoutingState(routing)
    }

    #if DEBUG
        /// 開発用の強制ルーティング
        ///
        /// 使用する場合は、setRoutingでルーティングする代わりに呼び出してください
        func forceRouting() {
            var routing: RoutingManager.RoutingState
//             routing = .serviceIntroduction
//             routing = .loginIntroduction  // ログイン前
//             routing = .onboarding // オンボーディング
//             routing = .newMemberRegist // 新規登録
//             routing = .counseling // カウンセリング
//             routing = .homeLoding // ホーム準備中
//             routing = .passwordReminder // パスワード再設定
//             routing = .login() // ログイン画面

//            routingManager.setRoutingState(routing)
        }
    #endif
}
