//
//  CategoryItemComponent.swift
//  Hookah
//
//  Created by Ahmet on 5.12.2025.
//

import SwiftUI

struct CategoryItemComponent: View {
    let imageName: String
    let title: String
    let iconSize: CGFloat = 24
    let buttonSize: CGFloat = 100
    let lineWidth: CGFloat = 1

    var body: some View {
        VStack(spacing: .paddingSmall) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: iconSize, height: iconSize)

            Text(title)
                .font(.headerSmall)
                .foregroundStyle(.pureWhite)
        }
        .frame(width: buttonSize, height: buttonSize)
        .background(
            RoundedRectangle(cornerRadius: .radiusMedium)
                .fill(.caviar)
                .stroke(.darkGullGray, lineWidth: lineWidth)
        )
    }
}

#Preview {
    CategoryItemComponent(
        imageName: "placeholder",
        title: "Klasik"
    )
}
