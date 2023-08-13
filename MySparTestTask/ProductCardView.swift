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
    init(bonus: Bonus?) {
        self.bonus = bonus
    }
    fileprivate func bonusText(_ bonus: Bonus) -> Text {
        return Text(bonus.rawValue)
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .center, spacing: 0) {
                Image(systemName: C.placeHolderImage)
                    .frame(maxHeight: .infinity)
                HStack(alignment: .firstTextBaseline, spacing: 0) {
                    PriceTagView(price: 259.9)
                    Spacer()
                    Button {
                        // add to cart
                    } label: {
                        Image(systemName: "basket.fill")
                            .foregroundColor(.white)
                            .padding(C.Spacing.small)
                            .background(
                                Circle()
                                    .fill(.green)
                            )
                    }
                }
            }
            .frame(maxWidth: 160)
            .padding(.horizontal, C.Spacing.small)
            .padding(.bottom, C.Spacing.mini)
            if let bonus = self.bonus {
                bonusText(bonus)
                    .foregroundColor(.white)
                    .padding(.horizontal,C.Spacing.small)
                    .padding(.vertical,C.Spacing.mini)
                    .background(
                        RoundedCornersShape(corners: [.bottomRight,.topRight], radius: 8)
                            .fill(.red.opacity(0.5))
                    )
            }
        }
        .frame(maxHeight: 250)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: C.rectangleCornerRadius))
        .shadow(radius: 10)
    }
}

struct RoundedCornersShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(bonus: .priceStrike)
    }
}
