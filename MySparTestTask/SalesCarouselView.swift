//
//  SalesCarouselView.swift
//  MySparTestTask
//
//  Created by sergey on 13.08.2023.
//

import SwiftUI

struct SalesCarouselView: View {
    var body: some View {
        TabView {
            ForEach(0..<3) { product in
                C.placeHolderImage
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: C.rectangleCornerRadius)
                            .fill(.gray)
                    )
                    .padding(.horizontal, C.Spacing.medium)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: C.Dimension.carouselHeight)
    }
}

struct SalesCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        SalesCarouselView()
    }
}
