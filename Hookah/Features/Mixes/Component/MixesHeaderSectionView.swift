import SwiftUI

struct MixesHeaderSectionView: View {
    let title: String = "PLACEHOLDER"
    let subtitle: String = "Tüm Mixler"

    var body: some View {
        VStack(alignment: .leading, spacing: .paddingExtraLarge) {
            SectionHeader(title: title, subtitle: subtitle)
            DividerLine()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ZStack {
        Color.pureBlack.ignoresSafeArea()
        MixesHeaderSectionView()
            .padding(.paddingExtraLarge)
    }
}
