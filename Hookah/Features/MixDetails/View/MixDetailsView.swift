//
//  MixDetailsView.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 11.12.2025.
//

import SwiftUI

struct MixDetailsView: View {
    
    // PROPERTIES

    let mixID: String

    @EnvironmentObject var appDataStore: AppDataStore

    let headerTitle: String = "PLACEHOLDER"
    let headerSubtitle: String = "Karışım Detayları"
    
    private var mix: MixModel? {
        appDataStore.mixes.first { $0.id == mixID }
    }
    
    private var relatedFlavors: [FlavorModel] {
        guard let mix else { return [] }
        return appDataStore.flavors.filter {
            mix.ingredients.keys.contains($0.id)
        }
    }
    
    var body: some View {
        ZStack {
            Color.pureBlack
                .ignoresSafeArea()

            if let mix {
                ScrollView (.vertical, showsIndicators: false){

                    VStack(alignment: .leading, spacing: .paddingExtraLarge) {

                        // MARK: - Mix Card
                        MixDetailsCard(item: mix)
                            .padding(.horizontal, .paddingMedium)

                        // MARK: - Pie Chart Card
                        PieChartCard(
                            item: mix,
                            allFlavors: relatedFlavors
                        )
                        .padding(.horizontal, .paddingMedium)

                        // MARK: - Notes
                        NotesCard()
                            .padding(.horizontal, .paddingMedium)
                    } //: VSTACK
                    .padding(.vertical, .paddingExtraLarge)
                } //: SCROLLVIEW
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        SectionHeader(title: mix.name, subtitle: headerSubtitle)
                    }
                }
            } else {
                ProgressView()
            }
        } //: ZSTACK
    }
}

#Preview {
    let store = AppDataStore.shared
    
    store.mixes = [.tropicalSunrise]
    store.flavors = [
        .citrusMix,
        .tropicalMango,
        .peachIceTea,
        .sweetPeach,
    ]
    return MixDetailsView(
        mixID: MixModel.tropicalSunrise.id)
    .environmentObject(store)
}
