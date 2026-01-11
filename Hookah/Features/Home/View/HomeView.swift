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

    let headerTitle: String = "PLACEHOLDER"
    let headerSubtitle: String = "Öne Çıkanlar ve Kategoriler"
    let categoryTitle: String = "Kategoriler"
    let mixListTitle: String = "Öne Çıkanlar"
    let mixListAction: String = "Tümünü Gör"

    var body: some View {
        ZStack {
            Color.pureBlack
                .ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: .paddingExtraLarge) {
                    SearchBarComponent(text: $searchText)
                        .padding(.horizontal, .paddingExtraLarge)

                    CategoryListComponent(
                        title: categoryTitle,
                        items: HomeCategory.allCases.map { CategoryModel(category: $0)
                        } ,
                        onSelect: { categoryModel in
                            nav.push(categoryModel.category.destination)
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
        .environmentObject(AppDataStore.shared)
        .environmentObject(NavigationManager())
}
