//
//  OriginMockApp.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/18.
//

import SwiftUI

@main
struct OriginMockApp: App {
    let routingManager = RoutingManager.shared
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            routingManager.getRouteView()
        }
    }
}
