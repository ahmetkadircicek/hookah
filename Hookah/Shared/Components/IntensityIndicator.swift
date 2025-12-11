//
//  IntensityView.swift
//  Hookah
//
//  Created by Codex on 11.12.2025.
//

import SwiftUI

struct IntensityIndicator: View {
    private let maxIcons: Int = 5
    let iconSize: CGFloat = 16
    let intensity: Int

    private var normalizedIntensity: Double {
        let clamped = max(0, min(10, intensity))
        return Double(clamped) / 2.0
    }

    private func image(for index: Int) -> Image {
        let position = Double(index) + 1.0
        let rating = normalizedIntensity

        if rating >= position {
            return Image("fireFilled")
        } else if rating >= position - 0.5 {
            return Image("fireHalfFilled")
        } else {
            return Image("fireOutlined")
        }
    }

    var body: some View {
        HStack(spacing: .paddingSmall) {
            ForEach(0 ..< maxIcons, id: \.self) { index in
                image(for: index)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: iconSize, height: iconSize)
                    .foregroundStyle(.goldenOlive)
            }
        }
    }
}

#Preview {
    VStack(spacing: .paddingMedium) {
        IntensityIndicator(intensity: 0)
        IntensityIndicator(intensity: 3)
        IntensityIndicator(intensity: 5)
        IntensityIndicator(intensity: 7)
        IntensityIndicator(intensity: 10)
    }
}
