import SwiftUI

struct FilterTag: View {
    let text: String
    let isSelected: Bool
    let lineWidth: CGFloat = 1

    var body: some View {
        Text(text.uppercased())
            .font(.captionLarge)
            .foregroundStyle(isSelected ? .goldenOlive : .aluminum)
            .padding(.horizontal, .paddingMedium)
            .padding(.vertical, .paddingSmall)
            .background(
                RoundedRectangle(cornerRadius: .radiusSmall)
                    .fill(isSelected ? .chicoryBrown : .caviar)
                    .overlay(
                        RoundedRectangle(cornerRadius: .radiusSmall)
                            .stroke(isSelected ? .goldenOlive : .darkGullGray, lineWidth: lineWidth)
                    )
            )
    }
}

#Preview {
    VStack(spacing: .paddingMedium) {
        FilterTag(text: "Dark", isSelected: true)
        FilterTag(text: "Yellow", isSelected: false)
    }
    .padding(.paddingExtraLarge)
    .background(Color.pureBlack)
}
