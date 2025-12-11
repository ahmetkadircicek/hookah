//
//  TobaccoModel.swift
//  Hookah
//
//  Created by Codex on 11.12.2025.
//

import Foundation

struct FlavorModel: Identifiable, Codable {
    let id: String
    let name: String
    let brand: String
    let category: String
    let description: String
    let flavorNotes: [String]
    let tobaccoType: String
    let intensity: Int
    let amount: Int
    let price: Int
    let imagePath: String
}

extension FlavorModel {
    static let citrusMix = FlavorModel(
        id: "07193A00-3650-49AB-AD17-92650820D75B",
        name: "Citrus Mix",
        brand: "Spectrum",
        category: "Meyveli",
        description: "Olgun ve güneşli narenciye meyvelerinin tatlı‑ekşi dengeli aromasıyla; zarif bir ferahlık ve hoş bir asidite sunan Spectrum tütünü.",
        flavorNotes: [
            "Olgun Narenciye",
            "Tatlı‑Ekşi Asidite",
            "Ferahlık"
        ],
        tobaccoType: "Dark",
        intensity: 4,
        amount: 200,
        price: 200,
        imagePath: "https://image.com/citrusmix.png"
    )
}

