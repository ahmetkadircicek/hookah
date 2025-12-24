//
//  HookahApp.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 1.12.2025.
//

import SwiftUI

@main
struct HookahApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var nav = NavigationManager()
    @StateObject var appDataStore = AppDataStore.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $nav.path) {
                nav.build(nav.current)
                    .navigationDestination(for: Route.self) { route in
                        nav.build(route)
                    }
            }
            .environmentObject(nav)
            .environmentObject(appDataStore)
        }
    }
}
