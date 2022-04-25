//
//  TabBarView.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/25.
//

import SwiftUI

struct TopPage: View {
    var body: some View {
        HomeView()
    }
}

struct FitnessPage: View {
    var body: some View {
        FitnessView()
    }
}

// 脳トレ
/* struct BrainPage: View {
    var body: some View {
        QuizView()
    }
} */

struct HealthHabitPage: View {
    var body: some View {
        HabitsView()
    }
}

struct ArticlePage: View {
    var body: some View {
        ArticleView()
    }
}

struct TabBarView: View {
    @ObservedObject private var viewModel = TabBarViewModel.shared

    // イニシャライザ
    init() {
        // TabViewの背景色の設定 (System/Gray/0 from figma)
        UITabBar.appearance().backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

        // 選択していないアイテム色を指定
        UITabBar.appearance().unselectedItemTintColor = UIColor(red: 0.408, green: 0.42, blue: 0.42, alpha: 1)
    }

    var body: some View {
        // TabItemのタップを検知し、メソッドを実行するための変数。TabViewの selection に設定
        let selectedTab = Binding<Int>(
            get: {
                viewModel.selectedTabNumber
            },
            set: {
                viewModel.selectedTabNumber = $0
                viewModel.convertSelectContent(select: $0)
            }
        )

        TabView(selection: selectedTab) {
            TopPage()  // 1枚目の子ビュー
                .tabItem {
                    viewModel.selectedTabNumber == RoutingContentName.home.rawValue
                    ? Image(systemName: "house.fill") : Image(systemName: "house")
                    Text(RoutingContentName.home.toString())
                        .foregroundColor(Color.black)
                        .font(.system(size: 12))
                }
                .tag(RoutingContentName.home.rawValue)
            FitnessPage()  // 2枚目の子ビュー
                .tabItem {
                    viewModel.selectedTabNumber == RoutingContentName.fitness.rawValue
                    ? Image(systemName: "figure.walk.circle.fill") : Image(systemName: "figure.walk.circle")
                    Text(RoutingContentName.fitness.toString())
                        .foregroundColor(Color.black)
                        .font(.system(size: 12))
                }
                .tag(RoutingContentName.fitness.rawValue)
            // 脳トレ
            /* BrainPage()  // 2枚目の子ビュー
                .tabItem {
                    Image(systemName: "2.circle.fill")  // タブバーの②
                } */
            ArticlePage()  // 3枚目の子ビュー
                .tabItem {
                    viewModel.selectedTabNumber == RoutingContentName.article.rawValue
                    ? Image(systemName: "note.text") : Image(systemName: "note")
                    Text(RoutingContentName.article.toString())
                        .foregroundColor(Color.black)
                        .font(.system(size: 12))
                }
                .tag(RoutingContentName.article.rawValue)
            HealthHabitPage()  // 4枚目の子ビュー
                .tabItem {
                    viewModel.selectedTabNumber == RoutingContentName.habits.rawValue
                    ? Image(systemName: "checkmark.square.fill") : Image(systemName: "checkmark.square")
                    Text(RoutingContentName.habits.toString())
                        .foregroundColor(Color.black)
                        .font(.system(size: 12))
                }
                .tag(RoutingContentName.habits.rawValue)
        }
        .accentColor(.black) // 選択したアイテム色を指定
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
