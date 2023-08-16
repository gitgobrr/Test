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
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("шт")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .font(C.Font.rpuView)
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
