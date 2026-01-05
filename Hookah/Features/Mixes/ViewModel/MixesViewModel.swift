import SwiftUI
import Combine

@MainActor
final class MixesViewModel: ObservableObject {
    
    //: MARK: - Dependencies
    @Published var items: [MixModel] = []
    
    let title: String = "Tüm Mixler"
    
    //: MARK: - Filter State
    @Published var isFilterPanelVisible: Bool = false
    @Published var selectedTobaccoType: String?
    @Published var selectedCategory: String?
    @Published var selectedIntensity: Int?
    
    private let appDataStore: AppDataStore
    
    // MARK: - Init
    init(appDataStore: AppDataStore) {
        self.appDataStore = appDataStore
        
        appDataStore.$mixes
            .receive(on: RunLoop.main)
            .assign(to: &$items)
    }
    
    // MARK: - Computed
    var filteredItems: [MixModel] {
        items.filter { item in
            if let selectedTobaccoType,
               !selectedTobaccoType.isEmpty,
               !item.mixTobaccoType.isEmpty,
               item.mixTobaccoType.caseInsensitiveCompare(selectedTobaccoType) != .orderedSame {
                return false
            }

            if let selectedCategory,
               !selectedCategory.isEmpty,
               !item.mixType.isEmpty,
               item.mixType.caseInsensitiveCompare(selectedCategory) != .orderedSame {
                return false
            }

            if let selectedIntensity {
                let bucket = Int(ceil(Double(item.intensity) / 2.0))
                if bucket != selectedIntensity {
                    return false
                }
            }

            return true
        }
    }

    var actionTitle: String {
        "\(filteredItems.count) sonuç"
    }

    func toggleFilterPanel() {
        isFilterPanelVisible.toggle()
    }
}
