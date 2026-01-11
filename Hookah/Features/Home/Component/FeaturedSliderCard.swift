//
//  FeaturedSliderCard.swift
//  Hookah
//
//  Created by Claude on 11.01.2026.
//

import SwiftUI

struct FeaturedSliderCard: View {
    let title: String
    let description: String
    let imageName: String?
    let action: () -> Void

    let buttonText: String = "Keşfet"
    let cardHeight: CGFloat = 200
    let cornerRadius: CGFloat = .radiusMedium

    var body: some View {
        ZStack() {
            // MARK: - Background Image or Placeholder
            if let imageName, !imageName.isEmpty {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: cardHeight)
                    .clipped()
            } else {
                // Placeholder when no image
                ZStack {
                    Color.caviar

                    Image(systemName: "photo")
                        .font(.system(size: 48))
                        .foregroundStyle(.darkGullGray)
                }
            }

            // MARK: - Gradient Overlay
            LinearGradient(
                gradient: Gradient(colors: [
                    .pureBlack.opacity(0.7),
                    .pureBlack.opacity(0.3),
                    .clear
                ]),
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: cardHeight)

            // MARK: - Content
            VStack(alignment: .leading, spacing: .paddingMedium) {
                Text(title)
                    .font(.headerLarge)
                    .foregroundStyle(.pureWhite)

                Text(description)
                    .font(.bodySmall)
                    .foregroundStyle(.pureWhite.opacity(0.9))
                    .lineLimit(2)
                
                Spacer()
                
                Button(action: action) {
                    Text(buttonText)
                        .font(.bodyMedium)
                        .foregroundStyle(.pureBlack)
                        .padding(.horizontal, .paddingLarge)
                        .padding(.vertical, .paddingSmall)
                        .background(
                            Capsule()
                                .fill(.pureWhite)
                        )
                }
            }
            .padding(.paddingLarge)
        }
        .frame(height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    VStack(spacing: .paddingMedium) {
        // With image
        FeaturedSliderCard(
            title: "Öne Çıkan Karışım:\nCitrus Sunrise",
            description: "Güneşin enerjisi ve tatlı bir başlangıç için mükemmel uyum...",
            imageName: "citrus-placeholder",
            action: {}
        )
        .padding(.paddingLarge)

        // Without image (placeholder)
        FeaturedSliderCard(
            title: "Öne Çıkan Karışım:\nTropical Dream",
            description: "Egzotik meyvelerle dolu bir yolculuk...",
            imageName: nil,
            action: {}
        )
        .padding(.paddingLarge)
    }
    .background(Color.pureBlack)
}
