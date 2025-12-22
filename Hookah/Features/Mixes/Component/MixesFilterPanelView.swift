import SwiftUI

struct MixesFilterPanelView: View {
    let items: [MixModel]

    @Binding var selectedTobaccoType: String?
    @Binding var selectedCategory: String?
    @Binding var selectedIntensity: Int?

    let titleText: String = "Filtreler"
    let tobaccoTitleText: String = "Tütün Tipi"
    let categoryTitleText: String = "Kategori"
    let intensityTitleText: String = "Yoğunluk"
    let scrollFadeWidth: CGFloat = 32

    private var tobaccoTypeOptions: [String] {
        let values = items.map { $0.mixTobaccoType }
            .filter { !$0.isEmpty }
            .map { $0.uppercased() }
        return Array(Set(values)).sorted()
    }

    private var categoryOptions: [String] {
        let values = items.map { $0.mixType }
            .filter { !$0.isEmpty }
            .map { $0.uppercased() }
        return Array(Set(values)).sorted()
    }

    private let intensityOptions: [Int] = Array(1...5)

    var body: some View {
        VStack(alignment: .leading, spacing: .paddingMedium) {
            Text(titleText)
                .font(.headerSmall)
                .foregroundStyle(.pureWhite)

            VStack(alignment: .leading, spacing: .paddingMedium) {
                if !tobaccoTypeOptions.isEmpty {
                    VStack(alignment: .leading, spacing: .paddingSmall) {
                        Text(tobaccoTitleText)
                            .font(.bodySmall)
                            .foregroundStyle(.aluminum)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: .paddingSmall) {
                                ForEach(tobaccoTypeOptions, id: \.self) { option in
                                    Button {
                                        toggleTobaccoType(option)
                                    } label: {
                                        FilterTag(
                                            text: option,
                                            isSelected: selectedTobaccoType?.uppercased() == option
                                        )
                                    }
                                    .buttonStyle(.plain)
                                }
                            }
                        }
                        .overlay(alignment: .trailing) {
                            horizontalScrollOverlay()
                        }
                    }
                }

                if !categoryOptions.isEmpty {
                    VStack(alignment: .leading, spacing: .paddingSmall) {
                        Text(categoryTitleText)
                            .font(.bodySmall)
                            .foregroundStyle(.aluminum)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: .paddingSmall) {
                                ForEach(categoryOptions, id: \.self) { option in
                                    Button {
                                        toggleCategory(option)
                                    } label: {
                                        FilterTag(
                                            text: option,
                                            isSelected: selectedCategory?.uppercased() == option
                                        )
                                    }
                                    .buttonStyle(.plain)
                                }
                            }
                        }
                        .overlay(alignment: .trailing) {
                            horizontalScrollOverlay()
                        }
                    }
                }

                VStack(alignment: .leading, spacing: .paddingSmall) {
                    Text(intensityTitleText)
                        .font(.bodySmall)
                        .foregroundStyle(.aluminum)

                    HStack(spacing: .paddingSmall) {
                        ForEach(intensityOptions, id: \.self) { level in
                            Button {
                                toggleIntensity(level)
                            } label: {
                                FilterTag(
                                    text: "\(level)",
                                    isSelected: selectedIntensity == level
                                )
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
        }
        .padding(.paddingExtraLarge)
        .background(
            RoundedRectangle(cornerRadius: .radiusMedium)
                .fill(.caviar)
                .stroke(.darkGullGray, lineWidth: 1)
        )
    }

    private func toggleTobaccoType(_ option: String) {
        if selectedTobaccoType?.uppercased() == option {
            selectedTobaccoType = nil
        } else {
            selectedTobaccoType = option
        }
    }

    private func toggleCategory(_ option: String) {
        if selectedCategory?.uppercased() == option {
            selectedCategory = nil
        } else {
            selectedCategory = option
        }
    }

    private func toggleIntensity(_ level: Int) {
        if selectedIntensity == level {
            selectedIntensity = nil
        } else {
            selectedIntensity = level
        }
    }

    @ViewBuilder
    private func horizontalScrollOverlay() -> some View {
        HStack(spacing: .paddingSmall) {
            LinearGradient(
                colors: [
                    .caviar.opacity(0),
                    .caviar
                ],
                startPoint: .leading,
                endPoint: .trailing
            )
            .frame(width: scrollFadeWidth)
            .allowsHitTesting(false)
        }
        .allowsHitTesting(false)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ZStack {
        Color.pureBlack.ignoresSafeArea()
        MixesFilterPanelView(
            items: MixModel.previewMixes,
            selectedTobaccoType: .constant(nil),
            selectedCategory: .constant(nil),
            selectedIntensity: .constant(nil)
        )
        .padding(.paddingExtraLarge)
    }
}
