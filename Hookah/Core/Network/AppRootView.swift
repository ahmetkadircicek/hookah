//
//  AppRootView.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 12.01.2026.
//

import SwiftUI

struct AppRootView: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        switch appState.phase {
        case .splash:
            SplashView()
        case .main:
            MainTabView()
        }
    }
}

#Preview {
    AppRootView()
}
