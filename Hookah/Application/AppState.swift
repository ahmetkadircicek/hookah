//
//  AppState.swift
//  Hookah
//
//  Created by Oğuzhan Cnr on 12.01.2026.
//

import Foundation
import Combine

@MainActor
final class AppState: ObservableObject {
    
    enum Phase {
        case splash
        case main
    }
    @Published var phase: Phase = .splash
}
