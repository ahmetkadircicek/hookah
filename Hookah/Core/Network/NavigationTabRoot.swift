//
//  NavigationTabRoot.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 14.01.2026.
//

import SwiftUI

struct NavigationTabRoot: View {
    
    let tab: MainTab
    @StateObject private var nav = NavigationManager()
    
    var body: some View {
        NavigationStack(path: $nav.path) {
            nav.build(tab.rootRoute)
                .navigationDestination(for: Route.self) { route in
                    nav.build(route)
                }
        }
        .environmentObject(nav)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(Color.pureBlack, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    NavigationTabRoot(tab: .home)
        .environmentObject(AppDataStore.preview)
}

