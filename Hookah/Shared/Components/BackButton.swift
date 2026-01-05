//
//  BackButton.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 11.12.2025.
//

import SwiftUI

struct BackButton: View {
    @EnvironmentObject var nav: NavigationManager
    
    var body: some View {
        HStack () {
          Image(systemName: "arrow.left")
                .font(.system(size: .paddingLarge))
          Text("Geri")
                .font(.system(size: .paddingLarge))
        } //: HSTACK
        .padding(.vertical, 6)
        .background(.pureBlack)
        .foregroundColor(.pureWhite)
        .contentShape(Rectangle())
        .onTapGesture {
            nav.pop()
        }
    }
}

#Preview (traits: .sizeThatFitsLayout){
    BackButton()
}
