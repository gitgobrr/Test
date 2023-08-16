//
//  HomeView.swift
//  MySparTestTask
//
//  Created by sergey on 13.08.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading,spacing: C.Spacing.small) {
                StoriesScrollView()
                SalesCarouselView()
                BonusCountView()
                    .padding(.horizontal, C.Spacing.medium)
                OffersScrollView()
                ProductsScrollView(title: "Рекомендуем")
                ProductsScrollView(title: "Сладкое настроение")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
