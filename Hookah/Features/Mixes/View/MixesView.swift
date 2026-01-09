//
//  MixesView.swift
//  Hookah
//
//  Created by Ahmet on 18.12.2025.
//

import SwiftUI

struct MixesView: View {
    @EnvironmentObject var appDataStore: AppDataStore
    @EnvironmentObject var nav: NavigationManager
    @StateObject var viewModel: MixesViewModel
    
    init() {
        _viewModel = StateObject(wrappedValue: MixesViewModel(appDataStore: AppDataStore.shared
            )
        )
    }
 
    var body: some View {
        ZStack(alignment: .top) {
            Color.pureBlack
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: .paddingLarge) {
                    MixesHeaderSectionView()
                    MixesToolbarView(
                        onFilterTapped: {
                            withAnimation(.easeInOut) {
                                viewModel.toggleFilterPanel()
                            
                            }
                        },
                        isFilterActivate: viewModel.isFilterPanelVisible
                        
                    )

                    if viewModel.isFilterPanelVisible {
                        MixesFilterPanelView(
                            items: viewModel.items,
                            selectedTobaccoType: $viewModel.selectedTobaccoType,
                            selectedCategory: $viewModel.selectedCategory,
                            selectedIntensity: $viewModel.selectedIntensity
                        )
                        .padding(.paddingLarge)
                        .transition(.move(edge: .top).combined(with: .opacity))

                    }

                    MixesTitleRowView(title: viewModel.title, actionTitle: viewModel.actionTitle)
                    MixesListView(
                    items: viewModel.filteredItems,
                    onSelect: { mix in
                        nav.push(.mixDetails(mixID: mix.id))
                    }
                    )
                }
                .padding(.paddingExtraLarge)
            }
        }
    }
}

#Preview {
    MixesView()
        .environmentObject(AppDataStore.preview)
}
