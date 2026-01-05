//
//  FlavorNotesSection.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 5.01.2026.
//

import SwiftUI

struct FlavorNotesSection: View {
    let notes: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: .paddingSmall) {
            DividerLine()
            
            Text("Tat Profili")
                .font(.headerSmall)
                .foregroundStyle(.pureWhite)
            
            VStack(alignment: .leading, spacing: .paddingSmall) {
                ForEach(notes, id: \.self) { note in
                    Text("• \(note)")
                        .font(.bodyLarge)
                        .foregroundStyle(.aluminum)
                }
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ZStack {
        Color.pureBlack.ignoresSafeArea()
        
        FlavorNotesSection(
            notes: [
                "Şeftali",
                "Vanilya",
                "Kremamsı",
                "Tatlı",
                "Hafif Çiçeksi"
            ]
        )
        .padding()
    }
}
