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
    
    @StateObject var appDataStore = AppDataStore.shared
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            AppRootView()
                .environmentObject(appState)
                .environmentObject(appDataStore)
        }
    }
}
