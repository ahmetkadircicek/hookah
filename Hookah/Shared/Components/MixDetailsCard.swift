//
//  MixDetailsCard.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 12.12.2025.
//

import SwiftUI

struct MixDetailsCard: View {
    // PROPERTIES
    let item: MixModel
    let lineWidth: CGFloat = 1
    let lineLimit: Int = 2
    var body: some View {
        
        HStack(spacing: .paddingLarge) {
            VStack(alignment: .leading, spacing: .paddingSmall) {
                // MARK: - Mix name
                Text(item.name)
                    .font(.headerSmall)
                    .foregroundStyle(.pureWhite)
                
                // MARK: - Mix description
                Text(item.description)
                    .font(.bodySmall)
                    .foregroundColor(.aluminum)
                
                //: MARK: - Category
                CategoryTag(text: item.mixType)
                    .padding(.vertical, .paddingSmall)
                
                HStack (spacing: .paddingExtraLarge){
                    //: MARK: - Intensity
                    VStack (alignment: .leading, spacing: .paddingMedium){
                        Text("Yoğunluk")
                            .font(.bodySmall)
                            .foregroundColor(.aluminum)
                        IntensityIndicator(intensity: item.intensity)
                    }
                    
                    //: MARK: - Tobacco Type
                    VStack (alignment: .leading, spacing: .paddingMedium){
                        Text("Tütün Tipi")
                            .font(.bodySmall)
                            .foregroundColor(.aluminum)
                        TobaccoTypeTag(text: item.mixTobaccoType)
                    }
                } //: HSTACK
            }//: VSTACK
            .padding(.paddingExtraLarge)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: .radiusMedium)
                    .fill(.caviar)
                    .stroke(.darkGullGray, lineWidth: 1)
            )
        }
    }
}

#Preview (traits: .sizeThatFitsLayout){
    MixDetailsCard(item: .tropicalSunrise)
}
