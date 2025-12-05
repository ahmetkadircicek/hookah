//
//  NavigationManager.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 6.12.2025.
//

import Foundation
import SwiftUI
import Combine

@MainActor
final class NavigationManager: ObservableObject {
    
    // MARK: - Published Properties
    @Published var path = NavigationPath()
    @Published var current: Route = .splash
    
    // MARK: - Navigation Actions
    
    /// Push a new route
    func push(_ route: Route) {
        path.append(route)
    }
    
    /// Pop last route
    func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
    
    /// Pop multiple routes
    func pop(count: Int) {
        guard count > 0, count <= path.count else { return }
        path.removeLast(count)
    }
    
    /// Pop to the root view
    func popToRoot() {
        path = NavigationPath()
    }
    
    /// Replace entire navigation stack with new root
    func setRoot(_ route: Route) {
        path = NavigationPath()
        current = route
    }
    
    /// Replace entire navigation stack
    func setPath(_ newPath: NavigationPath) {
        path = newPath
    }
}


// MARK: - Route Builder
extension NavigationManager {
    
    @ViewBuilder
    func build(_ route: Route) -> some View {
        switch route {
            
        case .splash:
            SplashView()
            
        case .home:
            HomeView()
        }
    }
}
