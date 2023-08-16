//
//  OfferCardView.swift
//  MySparTestTask
//
//  Created by sergey on 13.08.2023.
//

import SwiftUI

struct OfferCardView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: C.placeHolderImage)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: C.rectangleCornerRadius)
                        .fill(.gray)
                )
            Text("Offer name")
                .fontWeight(.medium)
                .lineLimit(2)
                .lineSpacing(C.Spacing.medium)
                .multilineTextAlignment(.leading)
        }
    }
}

struct OfferCardView_Previews: PreviewProvider {
    static var previews: some View {
        OfferCardView()
    }
}
