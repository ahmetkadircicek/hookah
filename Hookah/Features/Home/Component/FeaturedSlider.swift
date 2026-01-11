//
//  FeaturedSlider.swift
//  Hookah
//
//  Created by Claude on 11.01.2026.
//

import SwiftUI

struct FeaturedSlider: View {
    let items: [MixModel]
    let onSelect: (MixModel) -> Void

    let cardHeight: CGFloat = 200
    let peekAmount: CGFloat = 24 // Her iki tarafta görünecek alan

    var body: some View {
        GeometryReader { geometry in
            let cardWidth = geometry.size.width - (peekAmount * 2)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: .paddingMedium) {
                    ForEach(items) { mix in
                        FeaturedSliderCard(
                            title: "Öne Çıkan Karışım:\n\(mix.name)",
                            description: mix.description,
                            imageName: nil,
                            action: {
                                onSelect(mix)
                            }
                        )
                        .frame(width: cardWidth)
                    }
                }
                .scrollTargetLayout()
                .padding(.horizontal, peekAmount)
            }
            .scrollTargetBehavior(.viewAligned)
        }
        .frame(height: cardHeight)
    }
}

#Preview {
    FeaturedSlider(
        items: MixModel.previewMixes,
        onSelect: { mix in
            print("Selected mix: \(mix.name)")
        }
    )
    .padding(.paddingLarge)
    .background(Color.pureBlack)
}
