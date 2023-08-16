//
//  OffersScrollView.swift
//  MySparTestTask
//
//  Created by sergey on 13.08.2023.
//

import SwiftUI

struct OffersScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: C.Spacing.small) {
                Spacer()
                    .foregroundColor(.clear)
                    .frame(width: C.Spacing.small)
                ForEach(0..<9) { id in
                    OfferCardView()
                        .frame(width: C.Dimension.offerCardSize.w, height: C.Dimension.offerCardSize.h)
                }
                Spacer()
                    .foregroundColor(.clear)
                    .frame(width: C.Spacing.small)
            }
        }
    }
}

struct OffersScrollView_Previews: PreviewProvider {
    static var previews: some View {
        OffersScrollView()
    }
}
