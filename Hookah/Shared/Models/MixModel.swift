//
//  MixModel.swift
//  Hookah
//
//  Created by Codex on 11.12.2025.
//

import Foundation

struct MixModel: Identifiable, Codable {
    let id: String
    let name: String
    let description: String
    let ingredients: [String: Double]
    let intensity: Int
    let isFavorite: Bool
    let mixTobaccoType: String
    let mixType: String
    let mixWeight: Int
    let similarMixes: [String]

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case ingredients
        case intensity
        case isFavorite = "is_favorite"
        case mixTobaccoType = "mix_tobacco_type"
        case mixType = "mix_type"
        case mixWeight = "mix_weight"
        case similarMixes = "similar_mixes"
    }
}

extension MixModel {
    static let tropicalSunrise = MixModel(
        id: "1940453B-4A1F-4697-A205-7B7855E6C1D2",
        name: "Tropical Sunrise",
        description: "Taze mango, olgun şeftali ve tatlı-ekşi narenciye aromalarının ferahlatıcı bir karışımı. Turbo Tea’nin hafif baharatlı ve buzlu şeftali dokunuşu ile tropikal ve canlı bir içim deneyimi sunar.",
        ingredients: [
            "43AC6666-3C4C-48D1-844A-3F77C9164D51": 0.3,
            "672CC371-6D3A-45F2-9923-86477111E8D8": 0.2,
            "85F910CC-421F-446D-A646-CC1A0F8C0B50": 0.3,
            "AAC7DBE5-42C0-4370-A958-59526A0679AA": 0.2
        ],
        intensity: 7,
        isFavorite: true,
        mixTobaccoType: "Dark",
        mixType: "Meyveli",
        mixWeight: 50,
        similarMixes: []
    )
}
