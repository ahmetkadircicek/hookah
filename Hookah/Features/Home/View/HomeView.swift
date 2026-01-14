//
//  HomeView.swift
//  Hookah
//
//  Created by Ahmet on 5.12.2025.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    
    @EnvironmentObject var appDataStore: AppDataStore
    @EnvironmentObject var nav: NavigationManager
    
    let mixListTitle: String = "Öne Çıkanlar"
    let mixListAction: String = "Tümünü Gör"
    
    var body: some View {
        ZStack {
            Color.pureBlack
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: .paddingExtraLarge) {
                    
                    Text(appDataStore.cafeName)
                        .font(.system(size: 34, weight: .bold))
                        .fontDesign(.serif)
                        .foregroundStyle(.pureWhite)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, .paddingExtraLarge)
                    
                    
                    
                    SearchBarComponent(text: $searchText)
                        .padding(.horizontal, .paddingExtraLarge)
                    
                    FeaturedSlider(
                        items: appDataStore.mixes,
                        onSelect: { mix in
                            nav.push(.mixDetails(mixID: mix.id))
                        }
                    )
                    
                    MixListComponent(
                        title: mixListTitle,
                        actionTitle: mixListAction,
                        items: appDataStore.mixes,
                        onSelect: { mix in
                            nav.push(.mixDetails(mixID: mix.id))
                        }
                    )
                    .padding(.horizontal, .paddingExtraLarge)
                }
                .padding(.vertical, .paddingExtraLarge)
            }
        }
    }
}
    
    
    #Preview {
        HomeView()
            .environmentObject(AppDataStore.preview)
            .environmentObject(NavigationManager())
    }
