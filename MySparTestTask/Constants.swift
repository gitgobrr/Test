//
//  Constants.swift
//  MySparTestTask
//
//  Created by sergey on 12.08.2023.
//

import SwiftUI
typealias C = Constants

enum Constants {
    static let placeHolderImage = Image(systemName: "photo")
    static let locationBarPadding = 10.0
    static let rectangleCornerRadius = 12.0
    enum Spacing {
        static let mini = 4.0
        static let small = 8.0
        static let medium = 16.0
        static let large = 32.0
    }
    enum Dimension {
        static let storyWidth = 72.0
        static let carouselHeight = 200.0
        static let bonusCountHeight = 100.0
        static let offerCardSize = (w: 96.0, h: 128.0)
        static let productCardSize = (w: 170.0, h: 255.0)
    }
    enum Font {
        static let rpuView: SwiftUI.Font = .system(size: 8, weight: .bold, design: .rounded)
        static let productTitle: SwiftUI.Font = .system(size: 22, weight: .bold, design: .rounded)
    }
}
