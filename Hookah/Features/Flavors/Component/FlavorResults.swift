//
//  FlavorResults.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 18.12.2025.
//

import SwiftUI

struct FlavorResults: View {
    let results: Int

    var body: some View {
        HStack (alignment: .center, spacing: .paddingExtraLarge){
            Text("Tüm Aromalar")
                .font(.bodyLarge)
                .fontWeight(.bold)
                .foregroundStyle(.pureWhite)
            
            Spacer()
            
            Text("\(results) sonuç")
                .font(.bodyLarge)
                .foregroundStyle(.aluminum)
            
            
        }
    }
}

#Preview {
    FlavorResults(results: 12)
}
