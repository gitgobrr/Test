//
//  ProductCardView.swift
//  MySparTestTask
//
//  Created by sergey on 13.08.2023.
//

import SwiftUI

enum Bonus: String {
    case superPrice = "Супер цена"
    case priceStrike = "Удар по ценам"
}

struct ProductCardView: View {
    let bonus: Bonus?
    let price: Double
    let salesPrice: Double?
    init(price: Double, salesPrice: Double? = nil, bonus: Bonus? = nil) {
        self.bonus = bonus
        self.price = price
        self.salesPrice = salesPrice
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .center, spacing: 0) {
                C.placeHolderImage
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                HStack(alignment: .center, spacing: 0) {
                    PriceTagView(price: price, salePrice: salesPrice)
                    Spacer()
                    Button {
                        // add to cart
                    } label: {
                        Image(systemName: "basket.fill")
                            .foregroundColor(.white)
                            .padding(C.Spacing.medium)
                            .background(
                                Circle()
                                    .fill(.green)
                            )
                    }
                    .frame(maxHeight: .infinity)
                }
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, C.Spacing.small)
            }
            .padding(.bottom, C.Spacing.mini)
            if let bonus = self.bonus {
                BonusText(text: bonus.rawValue)
            }
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: C.rectangleCornerRadius))
        .padding(.vertical, C.Spacing.medium)
        .shadow(color: .gray.opacity(0.3), radius: 8)
    }
}

struct BonusText: View {
    let text: String
    var body: some View {
        Text(text)
            .lineLimit(2)
            .multilineTextAlignment(.leading)
            .foregroundColor(.white)
            .padding(.horizontal,C.Spacing.small)
            .padding(.vertical,C.Spacing.mini)
            .background(
                RoundedCornersShape(corners: [.bottomRight,.topRight], radius: 8)
                    .fill(.red.opacity(0.5))
            )
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(price: 259.9, salesPrice: 400.12, bonus: .priceStrike)
    }
}
