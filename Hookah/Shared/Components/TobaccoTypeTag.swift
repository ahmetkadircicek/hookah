//
//  TobaccoTypeTagView.swift
//  Hookah
//
//  Created by Codex on 11.12.2025.
//

import SwiftUI

struct TobaccoTypeTag: View {
    let text: String
    let lineWidth: CGFloat = 1

    var body: some View {
        Text(text.uppercased())
            .font(.captionLarge)
            .foregroundStyle(.goldenOlive)
            .padding(.horizontal, .paddingMedium)
            .padding(.vertical, .paddingSmall)
            .background(
                RoundedRectangle(cornerRadius: .radiusSmall)
                    .fill(.chicoryBrown)
                    .overlay(
                        RoundedRectangle(cornerRadius: .radiusSmall)
                            .stroke(.goldenOlive, lineWidth: lineWidth)
                    )
            )
    }
}

#Preview {
    TobaccoTypeTag(text: "Dark")
}
