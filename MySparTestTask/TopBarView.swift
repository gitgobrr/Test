//
//  TopBarView.swift
//  MySparTestTask
//
//  Created by sergey on 16.08.2023.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        HStack(alignment: .center, spacing: C.Spacing.small) {
            LocationBarView()
            Button {
                // open menu
            } label: {
                Image(systemName: "line.3.horizontal")
                    .font(.system(size: 20, weight: .semibold))
                    .imageScale(.large)
                    .foregroundColor(.green)
            }
        }
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
    }
}
