//
//  ProductsScrollView.swift
//  MySparTestTask
//
//  Created by sergey on 13.08.2023.
//

import SwiftUI

struct ProductsScrollView: View {
    let title: String
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .font(.system(size: 22, weight: .bold, design: .rounded))
                .padding(.horizontal, C.Spacing.medium)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: C.Spacing.medium) {
                    Spacer()
                        .foregroundColor(.clear)
                        .frame(width: C.Spacing.small)
                    ForEach(0..<9) { id in
                        let rand = Int(arc4random() % 1000)
                        let price = Double(rand) / Double(id+1)
                        let salesPrice = rand % 4 == 0 ? price*2 : nil
                        ProductCardView(price: price, salesPrice: salesPrice, bonus: randomBonus(rand % 4))
                            .frame(width: 170, height: 255)
                    }
                    Spacer()
                        .foregroundColor(.clear)
                        .frame(width: C.Spacing.small)
                }
            }
        }
    }
    
    private func randomBonus(_ n: Int) -> Bonus? {
        switch n {
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
        ProductsScrollView(title: "Title")
    }
}
