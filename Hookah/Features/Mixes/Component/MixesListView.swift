import SwiftUI

struct MixesListView: View {
    let items: [MixModel]
    let onSelect: (MixModel) -> Void

    var body: some View {
        LazyVStack(spacing: .paddingMedium) {
            ForEach(items) { item in
                MixCard(item: item)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        onSelect(item)
                    }
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ScrollView {
        MixesListView(
            items: MixModel.previewMixes,
            onSelect: { _ in }
        )
            .padding(.paddingExtraLarge)
    }
    .background(Color.pureBlack)
}
