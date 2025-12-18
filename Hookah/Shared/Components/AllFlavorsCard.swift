//
//  AllFlavorsCard.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 18.12.2025.
//

import SwiftUI

struct AllFlavorsCard: View {
    let flavor: FlavorModel
    let lineWidth: CGFloat = 1
    
    var body: some View {
        VStack(alignment: .leading, spacing: .paddingSmall) {
            
            HStack (alignment: .center, spacing: .paddingMedium){
                // MARK: - Flavor Name
                Text(flavor.name)
                    .font(.headerLarge)
                    .fontWeight(.bold)
                    .foregroundStyle(.pureWhite)
                
                Spacer()
                
                // MARK: - Tobacco Type
                TobaccoTypeTag(text: flavor.tobaccoType)
            } //: HSTACK
            
            // MARK: - Flavor Brand
            Text(flavor.brand)
                .font(.bodyLarge)
                .fontWeight(.bold)
                .foregroundStyle(.aluminum)
            
            //: MARK: - Flavor Description
            Text(flavor.description)
                .font(.bodyLarge)
                .fontWeight(.bold)
                .foregroundStyle(.aluminum)
            
        } //: VSTACK
        .padding(.paddingLarge)
        .background(
            RoundedRectangle(cornerRadius: .radiusMedium)
                .fill(.caviar)
                .stroke(.darkGullGray, lineWidth: 1)
        )
    }
}

#Preview (traits: .sizeThatFitsLayout){
    AllFlavorsCard(flavor: .sweetPeach)
}
