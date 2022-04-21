//
//  HomeStatusView.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/22.
//

import SwiftUI

/// ステータスバー (ユーザーアバター、歩数、通知アイコン)
struct HomeStatusView: View {
    @Environment(\.viewController) private var viewControllerHolder: UIViewController?
    let contentName: RoutingContentName
    @ObservedObject private var homeViewModel = HomeViewModel.shared

    var body: some View {
        HStack {
            Group {
                Button {
                    viewControllerHolder?.present(
                        style: .overFullScreen,
                        builder: {
                            MyPageTopView()
                        }
                    )
                } label: {
                    // asset placeholder
                    AsyncImageDownloader(
                        url: homeViewModel.userIconURL,
                        type: .assets,
                        placeholderImage: "mypage_avatar_notfound"
                    )
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())  // TODO: 仮に他同様にclipしておく
                }
                .padding(.leading, 16)

                HStack(spacing: 0) {
                    Spacer()
                    Text(contentName.toString())
                        .font(.system(size: 18).bold())
                        .foregroundColor(.black)
                    Spacer()
                }

                Button {
                    viewControllerHolder?.present(
                        style: .overFullScreen,
                        builder: {
//                            NoticeListView()
                        }
                    )
                } label: {
                    // TODO: 未確定
                    Image("notifications_none")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                .padding(.trailing, 16)
            }
            .padding(.vertical, 8)
        }
        .background(.white)
        .onAppear {
            homeViewModel.onAppear()
        }
        .onReceive(MyPageDissmissNotification.onDissmiss) { _ in
            homeViewModel.onAppear()
        }
    }
}

struct HomeStatusView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatusView(contentName: RoutingContentName.home)
            .previewLayout(.fixed(width: 375, height: 50))
    }
}
