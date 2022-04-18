//
//  RoutingViewModel.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/19.
//

import SwiftUI

final class RoutingViewModel: ObservableObject {
    @Published var state: RoutingManager.RoutingState = .splash
    @Published var transition: AnyTransition = .identity

    /// Routing処理
    func changeRoutingStatus(state: RoutingManager.RoutingState, transition: AnyTransition?, animation: Animation) {
        if let transition = transition {
            self.transition = .asymmetric(insertion: transition, removal: .opacity)
        } else {
            self.transition = .identity
        }

        withAnimation(animation) {
            self.state = state
        }
    }
}
