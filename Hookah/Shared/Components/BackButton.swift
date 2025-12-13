//
//  BackButton.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 11.12.2025.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        HStack () {
          Image(systemName: "arrow.left")
                .padding(.horizontal, .paddingSmall)
          Text("Geri")
                .font(.system(size: .paddingLarge))
        } //: HSTACK
        .padding(.horizontal, .paddingSmall)
        .background(.pureBlack)
        .foregroundColor(.pureWhite)
        .contentShape(Rectangle())
    }
}

#Preview (traits: .sizeThatFitsLayout){
    BackButton()
}
