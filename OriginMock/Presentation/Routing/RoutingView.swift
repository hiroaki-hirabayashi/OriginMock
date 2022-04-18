//
//  RoutingView.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/19.
//

import SwiftUI

/// 管理画面
struct RoutingView: View {
    // ClassでViewを保持するのでObservedObjectにする
    @ObservedObject var viewModel = RoutingViewModel()

    var body: some View {
        switch viewModel.state {
        case .splash:
            SplashView().transition(viewModel.transition)
//        case .home:
//            MainView().transition(viewModel.transition)
//        case .login:
//            LoginView().transition(viewModel.transition)
//        case .serviceIntroduction:
//            ServiceIntroductionView().transition(viewModel.transition)
//        case .onboarding:
//            ContentsIntroductionMainView().transition(viewModel.transition)
//        case .newMemberRegist:
//            NewMemberRegistView().transition(viewModel.transition)
//        case .counseling:
//            CounselingMainView().transition(viewModel.transition)
//        case .homeLoding:
//            HomeLoadingView().transition(viewModel.transition)
//        case .passwordReminder:
//            ResetPasswordView().transition(viewModel.transition)
        }
    }
}
