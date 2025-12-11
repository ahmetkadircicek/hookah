//
//  SectionHeader.swift
//  Hookah
//
//  Created by Ahmet on 5.12.2025.
//

import SwiftUI

struct SectionHeader: View {
    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading, spacing: .paddingSmall) {
            Text(title)
                .font(.headerLarge)
                .foregroundStyle(.pureWhite)

            Text(subtitle)
                .font(.bodyMedium)
                .foregroundStyle(.aluminum)
        }
    }
}

#Preview {
    SectionHeader(
        title: "Başlık",
        subtitle: "Açıklama"
    )
}
