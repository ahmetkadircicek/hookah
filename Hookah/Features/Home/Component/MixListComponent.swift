//
//  FeaturedListComponent.swift
//  Hookah
//
//  Created by Ahmet on 5.12.2025.
//

import SwiftUI

struct MixListComponent: View {
    let title: String
    let actionTitle: String?
    let items: [MixModel]
    let headerHeight: CGFloat = 30

    var body: some View {
        VStack(alignment: .leading, spacing: .paddingMedium) {
            HStack {
                Text(title)
                    .font(.headerSmall)
                    .foregroundStyle(.pureWhite)

                Spacer()

                if let actionTitle {
                    Text(actionTitle)
                        .font(.bodySmall)
                        .foregroundStyle(.goldenOlive)
                }
            }
            .frame(height: headerHeight)

            LazyVStack(spacing: .paddingMedium) {
                ForEach(items) { item in
                    MixCard(item: item)
                }
            }
        }
    }
}

#Preview {
    MixListComponent(
        title: "Öne Çıkanlar",
        actionTitle: "Tümünü Gör",
        items: MixModel.previewMixes
    )
}
