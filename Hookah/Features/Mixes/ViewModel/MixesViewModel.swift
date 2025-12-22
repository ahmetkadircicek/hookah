import SwiftUI
import Combine

final class MixesViewModel: ObservableObject {
    let title: String = "Tüm Mixler"
    let items: [MixModel]

    @Published var isFilterPanelVisible: Bool = false
    @Published var selectedTobaccoType: String?
    @Published var selectedCategory: String?
    @Published var selectedIntensity: Int?

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

    init(items: [MixModel]) {
        self.items = items
    }

    func toggleFilterPanel() {
        isFilterPanelVisible.toggle()
    }
}
