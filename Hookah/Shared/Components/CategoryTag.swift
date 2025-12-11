//
//  CategoryTagView.swift
//  Hookah
//
//  Created by Codex on 11.12.2025.
//

import SwiftUI

struct CategoryTag: View {
    let text: String
    let lineWidth: CGFloat = 1
    
    var body: some View {
        Text(text.capitalizedFirst)
            .font(.captionLarge)
            .foregroundStyle(.aluminum)
            .padding(.horizontal, .paddingMedium)
            .padding(.vertical, .paddingSmall)
            .background(
                RoundedRectangle(cornerRadius: .radiusSmall)
                    .fill(.pureBlack)
                    .overlay(
                        RoundedRectangle(cornerRadius: .radiusSmall)
                            .stroke(.darkGullGray, lineWidth: lineWidth)
                    )
            )
    }
}

#Preview {
    CategoryTag(text: "meyve")
}
