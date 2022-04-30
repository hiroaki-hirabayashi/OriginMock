//
//  ServiceIntroductionView.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/26.
//

import SwiftUI

/// ログイン前画面
struct ServiceIntroductionView: View {
    @StateObject var viewModel: ServiceIntroductionViewModel = ServiceIntroductionViewModel()
    @StateObject var splashViewModel = SplashViewModel()
    @State private var currentPage = 0
    var body: some View {
        let bounds = UIScreen.main.bounds
        let width: CGFloat = bounds.width
        let height: CGFloat = bounds.height

        VStack(alignment: .center, spacing: 0) {
            ServiceIntroductionPageControlView()

            // ボタン、インジケーター領域は数値指定ではなく、縦は画面の2割にする
            VStack(spacing: 24) {
                if self.viewModel.page == self.viewModel.lastPage {
                    WrappingHStack {
                        Spacer()
                        Text("すでにアカウントがある方は")
                            .font(.system(size: 18))
                            .background(Color.white)
                            .foregroundColor(Color.black)
                        Text("ログイン")
                            .underline()
                            .font(.system(size: 18))
                            .onTapGesture {
                                let url = URL(string: "https://example.com/")
                                guard let stackOverflowURL = url, UIApplication.shared.canOpenURL(stackOverflowURL) else { return }
                                UIApplication.shared.open(stackOverflowURL)
                                // TopRoutingManager.shared.setRoutingState(.login())
                            }
                            .background(Color.white)
                            .foregroundColor(Color.black)
                        Spacer()
                    }
                    .frame(alignment: .center)
                } else {
                    // テキストの分のスペースを空けておく
                    Spacer().frame(height: 24)
                }
                PageIndicatorView(
                    numPages: self.viewModel.pageModeles.count,
                    currentPage: self.$viewModel.page
                )
//                StateButtonView(text: self.viewModel.pageModeles[self.viewModel.page].buttonName) {
//                    if self.viewModel.page == viewModel.notificationRequestPage {
//                        self.viewModel.requestNotificationPermission()
//                    } else {
//                        viewModel.nextPage()
//                    }
//                }
//                .padding(.horizontal, 16)
            }
            .frame(width: width, height: CGFloat(height * 0.2))
            .padding(.bottom, 16)
        }
        .environmentObject(viewModel)
    }
}

struct ServiceIntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceIntroductionView()
    }
}
