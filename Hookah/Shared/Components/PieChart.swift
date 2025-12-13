//
//  PieChart.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 12.12.2025.
//
import SwiftUI
import Charts

struct PieSliceData: Identifiable {
    let id = UUID()
    let index: Int
    let label: String
    let value: Double
}

struct PieChart: View {
    
    var values: [Double] = []
    var labels: [String] = []
    
    private let colors: [Color] = [
        .rawSienna,
        .goldenOlive,
        .cumin,
        .sundial,
        .paleDogwood,
    ]
    
    private var data: [PieSliceData] {
        values.enumerated().map { index, val in
            PieSliceData(
                index: index,
                label: labels.indices.contains(index) ? labels[index] : "Item \(index + 1)",
                value: val
            )
        }
    }
    
    var body: some View {
        Chart(data) { item in
            SectorMark(
                angle: .value("Value", item.value),
                innerRadius: 40
            )
            .foregroundStyle(colors[item.index % colors.count])
        }
        .chartLegend(.hidden)
    }
}

extension PieChart {
    init(mix: MixModel) {
        let sorted = mix.ingredients.sorted { $0.value > $1.value }

        self.values = sorted.map { $0.value }
        self.labels = sorted.map { $0.key }
    }
}

#Preview {
    PieChart(values: [30, 20, 20, 15, 15])
        .frame(height: 250)
        .padding()
}
