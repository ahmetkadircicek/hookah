//
//  String+Extension.swift
//  Hookah
//
//  Created by Ahmet on 11.12.2025.
//

extension String {
    var capitalizedFirst: String {
        guard let first = self.first else { return self }
        return first.uppercased() + self.dropFirst().lowercased()
    }
}
