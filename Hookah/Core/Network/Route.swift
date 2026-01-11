//
//  Route.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 6.12.2025.
//

import Foundation

enum Route: Hashable {
    case splash
    case home
    case mixDetails (mixID: String)
    case mixes
    case flavors
}

enum MixFilter {
    case fruit
    case pastry
    case classic
}

enum MainTab: Hashable {
    case home
    case mixes
    case flavors
    
    var rootRoute: Route {
        switch self {
        case .home: return .home
        case .mixes: return .mixes
        case .flavors: return .flavors
        }
    }
}
