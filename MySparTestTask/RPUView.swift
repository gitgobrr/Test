//
//  RPUView.swift
//  MySparTestTask
//
//  Created by sergey on 13.08.2023.
//

import SwiftUI

struct RPUView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Text("₽")
                    .font(.system(size: 8, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("шт")
                    .font(.system(size: 8, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            Image(systemName: "line.diagonal")
        }
        .fixedSize(horizontal: true, vertical: true)
    }
}

struct RPUView_Previews: PreviewProvider {
    static var previews: some View {
        RPUView()
    }
}
