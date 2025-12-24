//
//  AppDataStore.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 24.12.2025.
//

import Foundation
import Combine

@MainActor
final class AppDataStore: ObservableObject {

    static let shared = AppDataStore()
    private init() {}

    @Published var mixes: [MixModel] = []
    @Published var flavors: [FlavorModel] = []
    @Published var isLoading: Bool = false
    @Published var isDataReady: Bool = false
    @Published var errorMessage: String?

    private let firestore = FirestoreService.shared

    // ✅ PUBLIC ENTRY POINT
    func loadCafeData(cafeID: String) {
        print("🚀 loadCafeData START – cafeID:", cafeID)

        isLoading = true
        errorMessage = nil
        isDataReady = false

        Task {
            do {
                print("📡 Fetching mixes...")
                try await fetchMixes(cafeID: cafeID)
                print("✅ Mixes fetched:", mixes.count)

                print("📡 Fetching flavors...")
                try await fetchFlavors(cafeID: cafeID)
                print("✅ Flavors fetched:", flavors.count)

                isLoading = false
                isDataReady = true
                print("🎉 DATA READY")

            } catch {
                isLoading = false
                errorMessage = error.localizedDescription
                print("❌ ERROR:", error.localizedDescription)
            }
        }
    }

    // 🔒 PRIVATE FETCH LOGIC
    private func fetchMixes(cafeID: String) async throws {
        let path = "cafes/\(cafeID)/mixes"
        print("➡️ Firestore path:", path)

        let result = try await firestore.getCollection(
            from: path,
            as: MixModel.self
        )

        print("📦 Raw mixes decoded:", result)
        mixes = result
    }

    private func fetchFlavors(cafeID: String) async throws {
        let path = "cafes/\(cafeID)/flavors"
        print("➡️ Firestore path:", path)

        let result = try await firestore.getCollection(
            from: path,
            as: FlavorModel.self
        )

        print("📦 Raw flavors decoded:", result)
        flavors = result
    }
}
