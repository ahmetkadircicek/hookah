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
    
    enum CodingKeys: String, CodingKey {
            case id
            case name
            case brand
            case category
            case description
            case flavorNotes = "flavor_notes"
            case tobaccoType = "tobacco_type"
            case intensity
            case amount
            case price
            case imagePath = "image_path"
        }
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
    static let sweetPeach = FlavorModel(
        id: "43AC6666-3C4C-48D1-844A-3F77C9164D51",
        name: "Sweet Peach",
        brand: "MustHave",
        category: "Meyveli",
        description: """
    Her nefeste bal-şurup benzeri tatlılık ve gerçekçi şeftali aroması hissedilir. Yoğun ama dengeli bir duman sunar ve hem tek başına hem karışımlarda keyifle kullanılabilir.
    """,
        flavorNotes: [
            "Doğal Tatlılık",
            "Hafif Bal Nüansı",
            "Yumuşak"
        ],
        tobaccoType: "Dark",
        intensity: 5,
        amount: 500,
        price: 200,
        imagePath: "https://image.com/doubleapple.png"
    )
    
    // 2) Tropical Mango
    static let tropicalMango = FlavorModel(
        id: "672CC371-6D3A-45F2-9923-86477111E8D8",
        name: "Tropical Mango",
        brand: "MustHave",
        category: "Meyveli",
        description: """
        Olgun tropikal mangonun tatlı-ekşi yapısını gerçekçi bir gövdede sunan ferahlatıcı bir aroma.
        Hafif kremsi alt notaları ve yoğun meyve karakteriyle karışımlara canlılık katar.
        """,
        flavorNotes: [
            "Tropikal Meyve",
            "Tatlı-Ekşi Denge",
            "Kremsi Arka Plan"
        ],
        tobaccoType: "Dark",
        intensity: 4,
        amount: 250,
        price: 220,
        imagePath: "https://image.com/tropicalmango.png"
    )

    // 3) Peach Ice Tea (Turbo Tea tarzı)
    static let peachIceTea = FlavorModel(
        id: "85F910CC-421F-446D-A646-CC1A0F8C0B50",
        name: "Peach Ice Tea",
        brand: "BlackBurn",
        category: "İçecek",
        description: """
        Buzlu şeftali çayı hissi veren ferahlatıcı bir aroma. 
        Hafif çay dokusu ve soğuk mentol benzeri tazelik ile karışımlara berraklık sağlar.
        """,
        flavorNotes: [
            "Soğuk Şeftali",
            "Hafif Çay Dokusu",
            "Ferahlatıcı"
        ],
        tobaccoType: "Dark",
        intensity: 3,
        amount: 200,
        price: 180,
        imagePath: "https://image.com/peachicetea.png"
    )

    // 4) Citrus Punch
    static let citrusPunch = FlavorModel(
        id: "AAC7DBE5-42C0-4370-A958-59526A0679AA",
        name: "Citrus Punch",
        brand: "Spectrum",
        category: "Meyveli",
        description: """
        Tatlı-ekşi narenciye tonlarının enerji veren canlı yapısıyla öne çıkan güçlü bir aroma.
        Grapefruit, lime ve portakal nüanslarıyla karışımlara parlaklık katar.
        """,
        flavorNotes: [
            "Canlı Narenciye",
            "Tatlı-Ekşi Denge",
            "Enerjik Asidite"
        ],
        tobaccoType: "Dark",
        intensity: 5,
        amount: 250,
        price: 190,
        imagePath: "https://image.com/citruspunch.png"
    )
}

