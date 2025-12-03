//
//  SplashView.swift
//  Hookah
//
//  Created by Ahmet on 3.12.2025.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            SplashBackgroundView()
            SplashLogoView()
        }
    }
}

#Preview {
    SplashView()
}