//
//  HomeView.swift
//  Hookah
//
//  Created by Ahmet on 5.12.2025.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
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
                    SectionHeader(
                        title: headerTitle,
                        subtitle: headerSubtitle
                    )
                    .padding(.horizontal, .paddingExtraLarge)

                    DividerLine()
                        .padding(.horizontal, .paddingExtraLarge)

                    SearchBarComponent(text: $searchText)
                        .padding(.horizontal, .paddingExtraLarge)

                    CategoryListComponent(
                        title: categoryTitle,
                        items: [
                            CategoryModel(imageName: "placeholder", title: "Klasik"),
                            CategoryModel(imageName: "placeholder", title: "Meyve"),
                            CategoryModel(imageName: "placeholder", title: "Pastane"),
                            CategoryModel(imageName: "placeholder", title: "Special")
                        ]
                    )
                    
                    MixListComponent(
                        title: mixListTitle,
                        actionTitle: mixListAction,
                        items: [
                            .tropicalSunrise,
                        ]
                    )
                    .padding(.horizontal, .paddingExtraLarge)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
