//
//  FlavorsView.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 18.12.2025.
//

import SwiftUI

struct FlavorsView: View {
    @EnvironmentObject var appDataStore: AppDataStore
    
    private var flavors: [FlavorModel] {
        appDataStore.flavors
    }
    
    var body: some View {
        ZStack {
            Color.pureBlack
                .ignoresSafeArea()
            
            ScrollView (.vertical, showsIndicators: false) {
                
                VStack (alignment: .leading, spacing: .paddingExtraLarge){
                    // MARK: - Header
                    SectionHeader(title: "PLACEHOLDER", subtitle: "Flavor Listesi")
                        .padding(.horizontal, .paddingExtraLarge)
                    
                    // MARK: - Divider
                    DividerLine()
                        .padding(.horizontal, .paddingExtraLarge)
                    
                    // MARK: - Back Button
                    BackButton()
                        .padding(.horizontal, .paddingExtraLarge)
                    
                    // MARK: - Flavor Results
                    FlavorResults(results: flavors.count)
                        .padding(.horizontal, .paddingExtraLarge)
                    
                    // MARK: - Flavor Card
                    ForEach(flavors) { flavor in
                        AllFlavorsCard(flavor: flavor)
                        .padding(.horizontal, .paddingLarge)
                        } //: FOREACH
                } //: VSTACK
            } //: SCROLLVIEW
        } //: ZSTACK
    }
}

#Preview {
    FlavorsView()
        .environmentObject({
            let store = AppDataStore.shared
            store.flavors = [.citrusMix, .peachIceTea]
            return store
        }())
}
