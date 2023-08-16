//
//  BonusCountView.swift
//  MySparTestTask
//
//  Created by sergey on 13.08.2023.
//

import SwiftUI

struct BonusCountView: View {
    @State private var bonusCount = 0
    var body: some View {
        ZStack(alignment: .topLeading) {
            C.placeHolderImage
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: C.rectangleCornerRadius)
                        .fill(.gray)
                )
            HStack(alignment: .lastTextBaseline, spacing: C.Spacing.mini) {
                Text("\(bonusCount)")
                    .font(.largeTitle.weight(.bold))
                Text("бонусов")
                    .fontWeight(.bold)
            }
            .padding([.top,.leading], C.Spacing.medium)
        }
        .frame(height: C.Dimension.bonusCountHeight)
    }
}

struct BonusCountView_Previews: PreviewProvider {
    static var previews: some View {
        BonusCountView()
    }
}
