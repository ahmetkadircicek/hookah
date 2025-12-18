//
//  NotesCard.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 18.12.2025.
//

import SwiftUI

struct NotesCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: .paddingSmall) {
            Text("Notlar")
                .font(.headerLarge)
                .foregroundColor(.pureWhite)
                .padding(.vertical, .paddingSmall)
            
            Text("Yeni başlayanlar için ideal!")
                .font(.headerSmall)
                .foregroundColor(.aluminum)
        } //: VSTACK
        .padding(.paddingExtraLarge)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: .radiusMedium)
                .fill(.caviar)
                .stroke(.darkGullGray, lineWidth: 1)
        )
    }
}

#Preview (traits: .sizeThatFitsLayout){
    NotesCard()
}
