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
                ForEach(0..<9) { id in
                    OfferCardView()
                }
            }
        }
    }
}

struct OffersScrollView_Previews: PreviewProvider {
    static var previews: some View {
        OffersScrollView()
    }
}
