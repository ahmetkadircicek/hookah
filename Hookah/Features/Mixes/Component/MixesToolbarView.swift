import SwiftUI

struct MixesToolbarView: View {
    let onFilterTapped: () -> Void
    let toolbarHeight: CGFloat = 50

    var body: some View {
        HStack {
            BackButton()
            Spacer()
            FilterButton(action: onFilterTapped)
        }
        .frame(height: toolbarHeight)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ZStack {
        Color.pureBlack.ignoresSafeArea()
        MixesToolbarView(onFilterTapped: {})
            .padding(.paddingExtraLarge)
    }
}
