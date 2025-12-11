//
//  DividerLine.swift
//  Hookah
//
//  Created by Ahmet on 5.12.2025.
//


import SwiftUI

struct DividerLine: View {
    var body: some View {
        let dividerHeight: CGFloat = 1.0;
        Rectangle()
            .fill(.darkGullGray)
            .frame(height: dividerHeight)
    }
}

#Preview {
    DividerLine()
}
