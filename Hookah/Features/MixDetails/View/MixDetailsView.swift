//
//  MixDetailsView.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 11.12.2025.
//

import SwiftUI

struct MixDetailsView: View {
    
    // PROPERTIES
    
    let headerTitle: String = "PLACEHOLDER"
    let headerSubtitle: String = "Karışım Detayları"
    
    var body: some View {
        ZStack {
            Color.pureBlack
                .ignoresSafeArea()
            
            ScrollView (.vertical, showsIndicators: false){
                
                VStack(alignment: .leading, spacing: .paddingExtraLarge) {
                    
                    // MARK: - Header
                    SectionHeader(title: headerTitle , subtitle: headerSubtitle)
                        .padding(.horizontal, .paddingExtraLarge)
                    
                    // MARK: - Divider
                    DividerLine()
                        .padding(.horizontal, .paddingExtraLarge)
                    
                    // MARK: BACK BUTTON
                    BackButton()
                    
                    // MARK: - Mix Card
                    MixDetailsCard(item: .tropicalSunrise)
                        .padding(.horizontal, .paddingMedium)
                    
                    // MARK: - Pie Chart Card
                    PieChartCard(item: .tropicalSunrise, allFlavors: [.citrusMix,
                                                                      .sweetPeach,
                                                                      .tropicalMango,
                                                                      .peachIceTea,
                                                                      .citrusPunch])
                    .padding(.horizontal, .paddingMedium)
                    
                    // MARK: - Notes
                } //: VSTACK
            } //: SCROLLVIEW
        } //: ZSTACK
    }
}

#Preview {
    MixDetailsView()
}
