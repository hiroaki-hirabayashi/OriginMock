//
//  HomeViewModel.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/22.
//

import Combine
import Foundation

public enum RoutingContentName: Int {
    case home
    case fitness
    case article
    case habits

    public func toString() -> String {
        switch self {
        case .home:
            return "ホーム"
        case .fitness:
            return "フィットネス"
        case .article:
            return "コラム"
        case .habits:
            return "健康習慣"
        }
    }
}


final class HomeViewModel: ObservableObject {
    /// シングルトン
    static let shared = HomeViewModel()

    @Published var userIconURL = ""


    /// 外部からはインスタンス化しない
    private init() {
    }

    func onAppear() {
//        featchUserIcon()
        print("HomeViewModel.onAppear")
    }

//    private func featchUserIcon() {
//        userAttributeUseCase.getUserAttribute { [weak self] result, error in
//            guard let self = self else { return }
//
//            ThreadUtils.runInMainThread {
//                if error == nil {
//                    let mapper = AvatarViewModelMapper()
//                    let avatarModel = mapper.domainToViewModel(domain: result.avatar)
//                    self.userIconURL = avatarModel.url
//                } else {
//                    // TODO: エラー処理
//                }
//            }
//        }
//    }
}
