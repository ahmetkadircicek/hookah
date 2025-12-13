//
//  MixFlavorListItem.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 12.12.2025.
//

import SwiftUI

struct MixFlavorListItem: View {
    // Properties
    let color: Color
    let ingredientName: String
    let ingredientBrand: String
    let tobaccoType: String
    let mixPercentage: Double
    
    var body: some View {
        HStack(alignment: .center, spacing: .paddingSmall) {
            //: MARK: - COLOR
            Circle()
                .fill(color)
                .frame(width: 30, height: 30)
                .padding(.trailing, .paddingSmall)
            
            //: MARK: - FLAVOR NAME AND BRAND
            VStack(alignment: .leading) {
                Text(ingredientName)
                    .font(.headerSmall)
                    .foregroundColor(.pureWhite)
                Text(ingredientBrand)
                    .font(.bodySmall)
                    .foregroundColor(.aluminum)
            }
            
            Spacer()
            
            //: MARK: - FLAVOR PERCENTAGE AND TOBACCO TYPE
            VStack(alignment: .trailing) {
                Text("\(Int(mixPercentage))")
                    .font(.headerSmall)
                    .foregroundColor(.buff)
                Text(tobaccoType)
                    .font(.headerSmall)
                    .foregroundColor(.goldenOlive)
            }
        } //: HSTACK
        .padding(.paddingExtraLarge)
        .background(
            RoundedRectangle(cornerRadius: .radiusMedium)
                .fill(.pureBlack)
                .stroke(.darkGullGray, lineWidth: 1)
        )
    }
}

#Preview {
    MixFlavorListItem(color: .cumin, ingredientName: "Antibiyotik", ingredientBrand: "Hookah Hospital", tobaccoType: "Blonde", mixPercentage: 20)
}
