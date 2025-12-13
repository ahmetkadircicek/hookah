//
//  PieChartCard.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 12.12.2025.
//

import SwiftUI

// MARK: - INGREDIENT INFO MODEL
private struct IngredientInfo {
    let flavor: FlavorModel?
    let percent: Double
}

struct PieChartCard: View {
    
    // MARK: - PROPERTIES
    let item: MixModel
    let allFlavors: [FlavorModel]
    
    private let colors: [Color] = [
        .rawSienna,
        .goldenOlive,
        .cumin,
        .sundial,
        .paleDogwood,
    ]
    
    private func flavor(for id: String) -> FlavorModel? {
        allFlavors.first { $0.id == id }
    }
    
    private var sortedIngredients: [(key: String, value: Double)] {
        item.ingredients.sorted { $0.value > $1.value }
    }
    
    private var ingredientInfos: [IngredientInfo] {
        sortedIngredients.map { entry in
            IngredientInfo(
                flavor: flavor(for: entry.key),
                percent: entry.value * 100
            )
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: .paddingSmall) {
            
            // MARK: - TITLE
            Text("Bileşenler")
                .font(.headerSmall)
                .foregroundColor(.pureWhite)
                .padding(.bottom, .paddingSmall)
            
            // MARK: - PIE CHART
            PieChart(mix: item)
                .frame(height: 250)
                .padding(.horizontal, .paddingMedium)
                .padding(.vertical, .paddingMedium)
            
            // MARK: - FLAVOR LIST ITEMS
            VStack(spacing: .paddingSmall) {
                ForEach(Array(ingredientInfos.enumerated()), id: \.offset) { index, info in
                    MixFlavorListItem(
                        color: colors[index % colors.count],
                        ingredientName: info.flavor?.name ?? "Bilinmeyen Tat",
                        ingredientBrand: info.flavor?.brand ?? "—",
                        tobaccoType: info.flavor?.tobaccoType ?? "—",
                        mixPercentage: info.percent
                    )
                }
            }
            .padding(.top, .paddingSmall)
            
        } //: VSTACK
        .padding(.paddingExtraLarge)
        .background(
            RoundedRectangle(cornerRadius: .radiusMedium)
                .fill(.caviar)
                .stroke(.darkGullGray, lineWidth: 1)
        )
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    PieChartCard(
        item: .tropicalSunrise,
        allFlavors: [
            .citrusMix,
            .sweetPeach,
            .tropicalMango,
            .peachIceTea,
            .citrusPunch
        ]
    )
}
