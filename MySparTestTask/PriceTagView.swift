//
//  PriceTagView.swift
//  MySparTestTask
//
//  Created by sergey on 13.08.2023.
//

import SwiftUI

struct PriceTagView: View {
    let integer: String
    let fraction: String
    let salePrice: String?
    init(price: Double, salePrice: Double? = nil) {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = " "
        formatter.decimalSeparator = "."
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        let number = NSNumber(floatLiteral: price)
        let str = formatter.string(from: number)!
        let parts = str.split(separator: ".", maxSplits: 1)
        self.integer = String(parts[0])+"."
        self.fraction = String(parts[1])
        
        if let salePrice = salePrice {
            let saleNumber = NSNumber(floatLiteral: salePrice)
            self.salePrice = formatter.string(from: saleNumber)
        } else {
            self.salePrice = nil
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .center, spacing: 4) {
                HStack(alignment: .lastTextBaseline, spacing: 0) {
                    Text(integer)
                        .font(.system(size: 16, weight: .bold))
                    Text(fraction)
                        .font(.system(size: 14, weight: .bold))
                }
                RPUView()
            }
            if let salePrice = salePrice {
                Text(salePrice)
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                    .strikethrough(color: .gray)
            }
        }
        .lineLimit(1)
    }
}

struct PriceTagView_Previews: PreviewProvider {
    static var previews: some View {
        PriceTagView(price: 259.9, salePrice: 400.10)
    }
}
