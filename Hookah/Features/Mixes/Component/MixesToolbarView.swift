import SwiftUI

struct MixesToolbarView: View {
    let onFilterTapped: () -> Void
    let isFilterActivate: Bool
    let toolbarHeight: CGFloat = 50

    var body: some View {
        HStack {
            BackButton()
            Spacer()
            FilterButton(action: onFilterTapped, isActive: isFilterActivate)
        }
        .frame(height: toolbarHeight)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ZStack {
        Color.pureBlack.ignoresSafeArea()
        MixesToolbarView(onFilterTapped: {}, isFilterActivate: true)
            
    }
}
