//
//  MainTabView.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 12.01.2026.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab: MainTab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            NavigationTabRoot(tab: .home)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(MainTab.home)
            
            NavigationTabRoot(tab: .mixes)
                .tabItem {
                    Label("Mixes", systemImage: "flame.fill")
                }
                .tag(MainTab.mixes)
            
            NavigationTabRoot(tab: .flavors)
                .tabItem {
                    Label("Flavors", systemImage: "leaf.fill")
                }
                .tag(MainTab.flavors)
        } //: TABVIEW
    }
}

#Preview {
    MainTabView()
}
