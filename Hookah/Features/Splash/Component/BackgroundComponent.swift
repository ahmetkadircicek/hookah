//
//  SplashBackgroundView.swift
//  Hookah
//
//  Created by Ahmet on 3.12.2025.
//

import SwiftUI

struct BackgroundComponent: View {
    @State private var startAnimation = false
    let animationDuration = 2.0
    
    private let initialStartPoint = UnitPoint(x: -4, y: -3)
    private let finalStartPoint   = UnitPoint(x: 4, y: 3)
    
    private let initialEndPoint   = UnitPoint(x: 0, y: 0)
    private let finalEndPoint     = UnitPoint(x: 4, y: 3)
    
    var body: some View {
        LinearGradient(
            colors: [
                .pureBlack,
                .caviar,
                .pureBlack
            ],
            startPoint: startAnimation ? finalStartPoint : initialStartPoint,
            endPoint: startAnimation ? finalEndPoint : initialEndPoint
        )
        .ignoresSafeArea()
        .onAppear {
            startAnimation = true
        }
        .animation(
            .linear(duration: animationDuration)
            .repeatForever(autoreverses: false),
            value: startAnimation
        )
    }
}

#Preview {
    BackgroundComponent()
}
