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

    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack(alignment: .top, spacing: .paddingMedium) {
                VStack(alignment: .leading, spacing: .paddingMedium) {
                    // MARK: - Title & Description
                    Text(item.name)
                        .font(.headerSmall)
                        .foregroundStyle(.pureWhite)

                    Text(item.description)
                        .font(.bodySmall)
                        .foregroundStyle(.aluminum)
                        .lineLimit(lineLimit)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    // MARK: - Tags
                    HStack(spacing: .paddingSmall) {
                        if !item.mixType.isEmpty {
                            CategoryTag(text: item.mixType)
                        }

                        if !item.mixTobaccoType.isEmpty {
                            TobaccoTypeTag(text: item.mixTobaccoType)
                        }
                    }

                    // MARK: - Intensity
                    VStack(alignment: .leading, spacing: .paddingSmall) {
                        Text("Yoğunluk")
                            .font(.captionLarge)
                            .foregroundStyle(.aluminum)

                        IntensityIndicator(intensity: item.intensity)
                    }
                }

                Spacer(minLength: 0)
            }
            .padding(.paddingLarge)
            .background(
                RoundedRectangle(cornerRadius: .radiusMedium)
                    .fill(.caviar)
                    .stroke(.darkGullGray, lineWidth: lineWidth)
            )

            // MARK: - Favorite Badge
            if item.isFavorite {
                Text(favoriteText.capitalizedFirst)
                    .font(.captionLarge)
                    .foregroundStyle(.pureBlack)
                    .padding(.horizontal, .paddingMedium)
                    .padding(.vertical, .paddingSmall)
                    .background(
                        Capsule()
                            .fill(.goldenOlive)
                    )
                    .padding([.top, .trailing], .paddingLarge)
            }
        }
    }
}

#Preview (traits: .sizeThatFitsLayout){
    MixCard(
        item: .tropicalSunrise
    )
}
