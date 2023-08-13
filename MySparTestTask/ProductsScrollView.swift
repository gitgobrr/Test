//
//  ProductsScrollView.swift
//  MySparTestTask
//
//  Created by sergey on 13.08.2023.
//

import SwiftUI

struct ProductsScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: C.Spacing.medium) {
                ForEach(0..<9) { id in
                    ProductCardView(bonus: randomBonus())
                }
            }
            .padding(.vertical, 32)
        }
    }
    
    private func randomBonus() -> Bonus? {
        switch (arc4random() % 3) {
        case 0:
            return .superPrice
        case 1:
            return .priceStrike
        default:
            return nil
        }
    }
}

struct ProductsScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsScrollView()
    }
}
