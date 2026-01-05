import SwiftUI

struct FilterButton: View {
    let action: () -> Void
    let isActive: Bool
    
    let iconName: String = "line.3.horizontal.decrease"
    let title: String = "Filtreler"
    let spacing: CGFloat = 16
    let iconSize: CGFloat = 24
    let horizontalPadding: CGFloat = 16
    let minHeight: CGFloat = 50
    let cornerRadius: CGFloat = 16
    let borderLineWidth: CGFloat = 1

    var body: some View {
        Button(action: action) {
            HStack(spacing: spacing) {
                Image(systemName: iconName)
                    .foregroundColor(isActive ? .pureBlack : .pureWhite)
                    .frame(width: iconSize, height: iconSize)
                Text(title)
                    .font(.bodyLarge)
                    .foregroundColor(isActive ? .pureBlack : .pureWhite)
            }
            .padding(.horizontal, horizontalPadding)
            .frame(minHeight: minHeight)
        }
        .buttonStyle(.plain)
        .background(
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(isActive ? .goldenOlive : .caviar)
                .stroke(
                    isActive ? .goldenOlive : .darkGullGray,
                    lineWidth: borderLineWidth
                )
        )
        .animation(.easeInOut(duration: 0.2), value: isActive)
    }
}

#Preview (traits: .sizeThatFitsLayout){
    FilterButton(action: {}, isActive: true)
}
