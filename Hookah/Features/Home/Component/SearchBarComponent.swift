//
//  SearchBar.swift
//  Hookah
//
//  Created by Ahmet on 5.12.2025.
//

import SwiftUI

struct SearchBarComponent: View {
    @Binding var text: String
    let searchBarHeight: CGFloat = 50
    let iconSize: CGFloat = 24
    let iconName: String = "magnifyingglass"
    let hintText: String = "Mix adı, flavor veya marka ara..."
    let lineWidth: CGFloat = 1

    var body: some View {
        HStack(spacing: .paddingMedium) {
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: iconSize, height: iconSize)
                .foregroundStyle(.frostGray)

            TextField(
                "",
                text: $text,
                prompt: Text(hintText)
                    .foregroundStyle(.frostGray)
            )
            .font(.bodyLarge)
            .foregroundStyle(.frostGray)
        }
        .padding(.paddingMedium)
        .frame(height: searchBarHeight)
        .background(
            RoundedRectangle(cornerRadius: .radiusMedium)
                .fill(.caviar)
                .stroke(.darkGullGray, lineWidth: lineWidth)
        )
    }
}

#Preview {
    @Previewable @State var text = "Mix adı, flavor veya marka ara..."
    SearchBarComponent(text: $text)
}
