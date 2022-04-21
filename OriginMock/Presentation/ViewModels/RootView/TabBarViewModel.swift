//
//  TabBarViewModel.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/22.
//

import SwiftUI

final class TabBarViewModel: ObservableObject {
    /// シングルトン (複数箇所のクラスから参照しselectedContentの値を共有する)
    static let shared = TabBarViewModel()

    @Published var selectedContent = RoutingContentName.home
    @Published var selectedTabNumber: Int = 0

    /// 外部からはインスタンス化しない
    private init() {}

    func convertSelectContent(select: Int) {
        switch select {
        case RoutingContentName.home.rawValue:
            self.selectedContent = RoutingContentName.home
        case RoutingContentName.fitness.rawValue:
            self.selectedContent = RoutingContentName.fitness
        case RoutingContentName.article.rawValue:
            self.selectedContent = RoutingContentName.article
        case RoutingContentName.habits.rawValue:
            self.selectedContent = RoutingContentName.habits
        default:
            self.selectedContent = RoutingContentName.home
        }
    }
}
