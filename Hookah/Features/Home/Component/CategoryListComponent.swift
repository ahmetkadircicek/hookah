//
//  CategoryListComponent.swift
//  Hookah
//
//  Created by Ahmet on 5.12.2025.
//

import SwiftUI

struct CategoryListComponent: View {
    let title: String
    let items: [CategoryModel]
    let onSelect: (CategoryModel) -> Void
    let listHeight: CGFloat = 100

    var body: some View {
        VStack(alignment: .leading, spacing: .paddingLarge) {
            Text(title)
                .font(.headerSmall)
                .foregroundStyle(.pureWhite)
                .padding(.leading, .paddingExtraLarge)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: .paddingLarge) {
                    Spacer()
                        .frame(width: .paddingMedium)
                    ForEach(items) { item in
                        CategoryItemComponent(
                            imageName: item.category.imageName,
                            title: item.category.title
                        )
                        .contentShape(Rectangle())
                        .onTapGesture {
                            onSelect(item)
                        }
                    }
                    Spacer()
                        .frame(width: .paddingMedium)
                }
            }
            .frame(height: listHeight)
        }
    }
}

#Preview {
    CategoryListComponent(
        title: "Kategoriler",
        items: HomeCategory.allCases.map { CategoryModel(category: $0) },
        onSelect: { item in
            print(item.category.title)
        }
    )
}
