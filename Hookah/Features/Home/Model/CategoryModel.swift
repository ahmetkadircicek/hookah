//
//  CategoryModel.swift
//  Hookah
//
//  Created by Ahmet on 5.12.2025.
//

import Foundation

struct CategoryModel: Identifiable {
    let id = UUID()
    let category: HomeCategory
}

enum HomeCategory: CaseIterable, Identifiable {
    case flavors
    case fruitMix
    case pastryMix
    case classic

    var id: Self { self }

    var title: String {
        switch self {
        case .flavors: return "Tütünler"
        case .fruitMix: return "Meyve Mix"
        case .pastryMix: return "Pastane Mix"
        case .classic: return "Klasik"
        }
    }

    var imageName: String {
        "placeholder"
    }
    
    var destination: Route {
        switch self {
        case .flavors:
            return .flavors
        case .fruitMix:
            return .mixes(filter: .fruit)
        case .pastryMix:
            return .mixes(filter: .pastry)
        case .classic:
            return .mixes(filter: .classic)
        }
    }
}
