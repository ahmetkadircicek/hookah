//
//  HookahApp.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 1.12.2025.
//

import SwiftUI

@main
struct HookahApp: App {
    
    @StateObject var nav = NavigationManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $nav.path) {
                nav.build(nav.current)
                    .navigationDestination(for: Route.self) { route in
                        nav.build(route)
                    }
            }
            .environmentObject(nav)
        }
    }
}
