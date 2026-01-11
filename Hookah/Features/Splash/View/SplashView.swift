//
//  SplashView.swift
//  Hookah
//
//  Created by Ahmet on 3.12.2025.
//

import SwiftUI

struct SplashView: View {
    
    @EnvironmentObject var store: AppDataStore
    @EnvironmentObject var appState: AppState

    var body: some View {
        ZStack {
            BackgroundComponent()
            LogoComponent()
        }
        .task {
            store.loadCafeData(cafeID: "cafe_id_1")
        }
        .onChange(of: store.isDataReady) {
            if store.isDataReady {
                appState.phase = .main
            }
        }
    }
}

#Preview {
    SplashView()
}
