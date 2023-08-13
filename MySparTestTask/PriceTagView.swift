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
    init(price: Double) {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = " "
        formatter.decimalSeparator = "."
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        let number = NSNumber(floatLiteral: price)
        let str = formatter.string(from: number)!
        let parts = str.split(separator: ".")
        self.integer = String(parts[0])+"."
        self.fraction = String(parts[1])
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            HStack(alignment: .lastTextBaseline, spacing: 0) {
                Text(integer)
                    .font(.system(size: 16, weight: .bold))
                Text(fraction)
                    .font(.system(size: 14, weight: .bold))
            }
            ZStack {
                VStack(spacing: 0) {
                    Text("₽")
                        .font(.system(size: 8, weight: .bold, design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("шт")
                        .font(.system(size: 8, weight: .bold, design: .rounded))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                Image(systemName: "line.diagonal")
            }
            .fixedSize(horizontal: true, vertical: true)
        }
    }
}

struct PriceTagView_Previews: PreviewProvider {
    static var previews: some View {
        PriceTagView(price: 259.9)
    }
}
