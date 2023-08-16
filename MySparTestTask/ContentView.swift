//
//  ContentView.swift
//  MySparTestTask
//
//  Created by sergey on 16.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            if selection == .home {
                TopBarView()
                    .padding(.horizontal, C.Spacing.medium)
                    .padding(.vertical, C.Spacing.small)
            }
            Divider()
            TabView(selection: $selection) {
                ForEach(Tab.allCases) { tab in
                    switch tab {
                    case .home:
                        HomeView()
                            .tag(Tab.home)
                    default:
                        Text(tab.rawValue)
                            .tag(tab)
                    }
                }
            }
            HStack {
                ForEach(Tab.allCases) { tab in
                    Button {
                        selection = tab
                    } label: {
                        Label(tab.labelData.0, systemImage: tab.labelData.1)
                            .foregroundColor(selection == tab ? .green : .gray)
                            .frame(maxWidth: .infinity)
                            .padding(.top, C.Spacing.small)
                    }
                }
            }
            .labelStyle(VerticalLabelStyle())
            .background(Color.white)
            .clipped()
            .shadow(color: .gray, radius: 2)
            .mask(Rectangle().padding(.top, -10))
        }
    }
}

struct VerticalLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center, spacing: C.Spacing.mini) {
            configuration.icon
            configuration.title
        }
    }
}

enum Tab: String, Identifiable, CaseIterable {
    var id: String {
        self.rawValue
    }
    
    var labelData: (String, String) {
        switch self {
        case .home:
            return ("Главная","house")
        case .catalogue:
            return ("Каталог","square.grid.2x2")
        case .cart:
            return ("Корзина","cart")
        case .profile:
            return ("Профиль","person")
        }
    }
    
    case home,catalogue,cart,profile
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

