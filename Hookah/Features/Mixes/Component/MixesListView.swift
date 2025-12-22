import SwiftUI

struct MixesListView: View {
    let items: [MixModel]

    var body: some View {
        LazyVStack(spacing: .paddingMedium) {
            ForEach(items) { item in
                MixCard(item: item)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ScrollView {
        MixesListView(items: MixModel.previewMixes)
            .padding(.paddingExtraLarge)
            .background(Color.pureBlack)
    }
    .background(Color.pureBlack)
}
