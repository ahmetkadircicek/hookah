//
//  MixesView.swift
//  Hookah
//
//  Created by Ahmet on 18.12.2025.
//

import SwiftUI

struct MixesView: View {
    @ObservedObject var viewModel: MixesViewModel
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.pureBlack
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: .paddingExtraLarge) {
                    MixesHeaderSectionView()
                    MixesToolbarView(
                        onFilterTapped: {
                            withAnimation(.easeInOut) {
                                viewModel.toggleFilterPanel()
                            }
                        }
                    )

                    if viewModel.isFilterPanelVisible {
                        MixesFilterPanelView(
                            items: viewModel.items,
                            selectedTobaccoType: $viewModel.selectedTobaccoType,
                            selectedCategory: $viewModel.selectedCategory,
                            selectedIntensity: $viewModel.selectedIntensity
                        )
                    }

                    MixesTitleRowView(title: viewModel.title, actionTitle: viewModel.actionTitle)
                    MixesListView(items: viewModel.filteredItems)
                }
                .padding(.paddingExtraLarge)
            }
        }
    }
}

#Preview {
    MixesView(viewModel: MixesViewModel(items: MixModel.previewMixes))
}
