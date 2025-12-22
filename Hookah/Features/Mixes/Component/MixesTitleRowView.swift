import SwiftUI

struct MixesTitleRowView: View {
    let title: String
    let actionTitle: String
    let headerHeight: CGFloat = 30

    var body: some View {
        HStack {
            Text(title)
                .font(.headerSmall)
                .foregroundStyle(.pureWhite)

            Spacer()

            Text(actionTitle)
                .font(.bodySmall)
                .foregroundStyle(.aluminum)
        }
        .frame(height: headerHeight)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ZStack {
        Color.pureBlack.ignoresSafeArea()
        MixesTitleRowView(title: "Tüm Mixler", actionTitle: "3 sonuç")
            .padding(.paddingExtraLarge)
    }
}
