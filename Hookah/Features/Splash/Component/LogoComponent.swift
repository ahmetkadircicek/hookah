//
//  SplashLogoView.swift
//  Hookah
//
//  Created by Ahmet on 3.12.2025.
//

import SwiftUI

struct LogoComponent: View {
    let logoWidth: CGFloat = 200.0
    let logoHeight: CGFloat = 200.0
    let logoImage: String = "logo"

    var body: some View {
        Image(logoImage)
            .resizable()
            .scaledToFit()
            .frame(width: logoWidth, height: logoHeight)
    }
}

#Preview {
    LogoComponent()
}
