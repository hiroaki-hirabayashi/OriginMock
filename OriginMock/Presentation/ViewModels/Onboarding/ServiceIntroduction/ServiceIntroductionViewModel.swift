//
//  ServiceIntroductionViewModel.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/27.
//

import SwiftUI

class ServiceIntroductionViewModel: ObservableObject {
//    private let appleNotificationUseCase = DIContainer.shared.getPushNotificationPermissionUseCase()
//    private let onbodingUseCase = OnbordingUseCaseImpl(onbordingUserDefaultsRepository: OnbordingUserDefaultsRepository.self as! OnbordingUserDefaultsRepository)/*DIContainer.shared.getOnbordingUseCase()*/

    let lastPage = 3
    let notificationRequestPage = 2
    @Published var page: Int = 0

    var pageModeles: [ServiceIntroductionPageModel] = [ServiceIntroductionPageModel(backgroundImageName: "ServiceIntroduction_page1", text: "ようこそ、コマドヘ！\nすこやかな毎日を楽しむための健康生活アプリです。", buttonName: "次へ"), ServiceIntroductionPageModel(backgroundImageName: "ServiceIntroduction_page2", text: "フィットネスや趣味のコラム、小さな健康習慣づくりまで。必要なのは、このアプリ一つだけです！", buttonName: "次へ"), ServiceIntroductionPageModel(backgroundImageName: "ServiceIntroduction_page3", text: "歩数の目標達成や\n大切なお知らせをお届けします！通知設定はオンにしましょう。", buttonName: "設定する"), ServiceIntroductionPageModel(backgroundImageName: "ServiceIntroduction_page4", text: "小さな一歩でも、大丈夫。\nあなたの毎日に寄り添っていきます。さあ、一緒に始めましょう！", buttonName: "はじめる")]

    func nextPage() {
        self.page += 1
        if self.page > self.lastPage {
            self.page = lastPage
            self.completeIntroduction()
//            RoutingManager.shared.setRoutingState(.counseling)
        }
    }

    private func completeIntroduction() {
//        var progress = onbodingUseCase/*.getOnbodingProgress()*/
//        progress.completeServiceIntroduction = true
//        onbodingUseCase.setOnbodingProgress(progress: progress)
    }

    /// Request notification permission
    func requestNotificationPermission() {
//        appleNotificationUseCase.getPushNotificationPermission { isAppproval in
            // 非同期の場合、ボタン2回押しで2回コールバックが来てしまうため仮に回避的対応
            if self.page == self.notificationRequestPage {
                self.page += 1
            }
//        }
    }

    /// Check notification permission
    func isValidNotificationPermission() {
//        appleNotificationUseCase.fetchPushNotificationPermission { isAppproval in
//            Logger.debug(message: "isValidNotificationPermission")
//        }
    }
}
