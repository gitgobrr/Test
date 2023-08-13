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
                SalesButtonView()
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(maxHeight: 200)
    }
}

struct SalesCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        SalesCarouselView()
    }
}

struct SalesButtonView: View {
    var body: some View {
        Image(systemName: "questionmark.square.dashed")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: C.rectangleCornerRadius)
                    .fill(.gray)
            )
            .padding(.horizontal, C.Spacing.medium)
    }
}
