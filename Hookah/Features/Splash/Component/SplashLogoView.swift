//
//  SplashLogoView.swift
//  Hookah
//
//  Created by Ahmet on 3.12.2025.
//

import SwiftUI

struct SplashLogoView: View {
    let logoWidth = 200.0;
    let logoHeight = 200.0;
    
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: logoWidth, height: logoHeight)
    }
}
