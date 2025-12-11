//
//  FeaturedCardView.swift
//  Hookah
//
//  Created by Ahmet on 5.12.2025.
//

import SwiftUI

struct MixCard: View {
    let item: MixModel
    let lineWidth: CGFloat = 1
    let lineLimit: Int = 2
    let favoriteText: String = "Öne Çıkan"

    private var categoryTags: [String] {
        item.mixType.isEmpty ? [] : [item.mixType]
    }

    var body: some View {
        HStack(alignment: .top, spacing: .paddingLarge) {
            VStack(alignment: .leading, spacing: .paddingLarge) {
                VStack(alignment: .leading, spacing: .paddingSmall) {
                    Text(item.name)
                        .font(.headerSmall)
                        .foregroundStyle(.pureWhite)

                    Text(item.description)
                        .font(.bodySmall)
                        .foregroundStyle(.aluminum)
                        .lineLimit(lineLimit)
                }

                VStack(alignment: .leading, spacing: .paddingSmall) {
                    HStack(spacing: .paddingSmall) {
                        ForEach(categoryTags, id: \.self) { tag in
                            CategoryTag(text: tag)
                        }
                    }

                    if !item.mixTobaccoType.isEmpty {
                        TobaccoTypeTag(text: item.mixTobaccoType)
                    }
                }
            }

            Spacer(minLength: .paddingLarge)

            VStack(alignment: .trailing, spacing: .paddingLarge) {
                if item.isFavorite {
                    Text(favoriteText.capitalizedFirst)
                        .font(.captionLarge)
                        .foregroundStyle(.pureBlack)
                        .padding(.horizontal, .paddingLarge)
                        .padding(.vertical, .paddingSmall)
                        .background(
                            Capsule()
                                .fill(.goldenOlive)
                        )
                }

                Spacer()

                IntensityIndicator(intensity: item.intensity)
            }
        }
        .padding(.paddingExtraLarge)
        .background(
            RoundedRectangle(cornerRadius: .radiusMedium)
                .fill(.caviar)
                .stroke(.darkGullGray, lineWidth: lineWidth)
        )
    }
}

#Preview {
    MixCard(
        item: .tropicalSunrise
    )
}
