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

    static let midnightMint = MixModel(
        id: "7BE0F7C3-9F0D-4C0F-9E2A-7C6D9B4C1234",
        name: "Midnight Mint",
        description: "Yoğun nane, serin mentol ve hafif çikolata dokunuşu ile ferah, gece içimine uygun bir karışım.",
        ingredients: [
            "F3E2A1B4-6C7D-4890-8E2F-13579BDF2468": 0.4,
            "A1B2C3D4-5678-49AB-9CDE-F0123456789A": 0.3,
            "12345678-90AB-CDEF-1234-567890ABCDEF": 0.3
        ],
        intensity: 8,
        isFavorite: false,
        mixTobaccoType: "Virginia",
        mixType: "Ferahlatici",
        mixWeight: 50,
        similarMixes: []
    )

    static let citrusBurst = MixModel(
        id: "E2C3D4F5-6789-4ABC-8DEF-0123456789AB",
        name: "Citrus Burst",
        description: "Limon, portakal ve greyfurt aromalarının dengeli ve canlı karışımı. Gün boyu içilebilecek hafif ve ferah bir profil.",
        ingredients: [
            "0F1E2D3C-4B5A-6978-90AB-CDEF12345678": 0.5,
            "9A8B7C6D-5E4F-3210-BA98-76543210FEDC": 0.3,
            "ABCDEF12-3456-7890-ABCD-EF1234567890": 0.2
        ],
        intensity: 5,
        isFavorite: true,
        mixTobaccoType: "Virginia",
        mixType: "Narenciye",
        mixWeight: 50,
        similarMixes: []
    )

    static let berryDream = MixModel(
        id: "0A1B2C3D-4E5F-6789-ABCD-EF0123456789",
        name: "Berry Dream",
        description: "Yaban mersini, böğürtlen ve çilek notalarının yumuşak ve tatlı birleşimi. Tatlı sevenler için ideal.",
        ingredients: [
            "FEDCBA98-7654-3210-BA98-76543210FEDC": 0.4,
            "11112222-3333-4444-5555-666677778888": 0.4,
            "99990000-AAAA-BBBB-CCCC-DDDDEEEEFFFF": 0.2
        ],
        intensity: 6,
        isFavorite: false,
        mixTobaccoType: "Virginia",
        mixType: "Meyveli",
        mixWeight: 100,
        similarMixes: []
    )

    static let orientalSpice = MixModel(
        id: "13572468-2468-1357-2468-135724681357",
        name: "Oriental Spice",
        description: "Hafif baharatlı oryantal tütün karakteri, tarçın ve karanfil notalarıyla dengelenmiş sofistike bir karışım.",
        ingredients: [
            "22223333-4444-5555-6666-777788889999": 0.5,
            "AAAABBBB-CCCC-DDDD-EEEE-FFFF00001111": 0.3,
            "12344321-5678-8765-1234-567887654321": 0.2
        ],
        intensity: 9,
        isFavorite: false,
        mixTobaccoType: "Dark",
        mixType: "Baharatli",
        mixWeight: 50,
        similarMixes: []
    )

    static let previewMixes: [MixModel] = [
        .tropicalSunrise,
        .midnightMint,
        .citrusBurst,
        .berryDream,
        .orientalSpice
    ]
}
