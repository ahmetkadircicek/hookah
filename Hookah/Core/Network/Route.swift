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
    case mixes(filter: MixFilter? = nil)
    case flavors
}

enum MixFilter {
    case fruit
    case pastry
    case classic
}
