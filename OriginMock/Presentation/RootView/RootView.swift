//
//  MainView.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/22.
//

import SwiftUI

struct RootView: View {
    @ObservedObject private var viewModel = TabBarViewModel.shared
    var body: some View {
        VStack(spacing: 0) {
            HomeStatusView(contentName: viewModel.selectedContent)
//            TabBarView()
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
