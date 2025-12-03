//
//  Font+Extension.swift
//  Hookah
//
//  Created by Ahmet on 3.12.2025.
//

import SwiftUI

extension Font {
    
    // MARK: - Headings
    
    static var headerLarge: Font {
        return Font.custom("Montserrat-SemiBold", size: 24, relativeTo: .title2)
    }
    
    static var headerSmall: Font {
        return Font.custom("Montserrat-SemiBold", size: 16, relativeTo: .headline)
    }
    
    // MARK: - Body & Content
    
    static var bodyLarge: Font {
        return Font.custom("Montserrat-Medium", size: 16, relativeTo: .body)
    }
    
    static var bodyMedium: Font {
        return Font.custom("Montserrat-SemiBold", size: 14, relativeTo: .subheadline)
    }
    
    static var bodySmall: Font {
        return Font.custom("Montserrat-Medium", size: 14, relativeTo: .callout)
    }
    
    // MARK: - Captions & Metadata
    
    static var captionLarge: Font {
        return Font.custom("Montserrat-Medium", size: 13, relativeTo: .footnote)
    }
    
    static var captionSmall: Font {
        return Font.custom("Montserrat-Bold", size: 11, relativeTo: .caption)
    }
}
