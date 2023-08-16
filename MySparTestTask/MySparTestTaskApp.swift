//
//  MySparTestTaskApp.swift
//  MySparTestTask
//
//  Created by sergey on 12.08.2023.
//

import SwiftUI

@main
struct MySparTestTaskApp: App {
    @State private var selection: Tab = .home
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selection) {
                
            }
        }
    }
}

enum Tab: Int, Identifiable {
    var id: Int {
        self.rawValue
    }
    
    case home,catalogue,cart,profile
}
