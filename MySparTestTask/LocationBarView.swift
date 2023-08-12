//
//  LocationBarView.swift
//  MySparTestTask
//
//  Created by sergey on 12.08.2023.
//

import SwiftUI

struct LocationBarView: View {
    @State private var locationText = "Aliquip duis occaecat officia anim in enim ullamco deserunt."
    let sources = [
        "nulla",
        "magna",
        "labore",
        "pariatur",
        "culpa",
    ]
    var body: some View {
        HStack(alignment: .center, spacing: C.Spacing.small) {
            Image(systemName: "mappin.circle")
                .foregroundColor(.red)
            Menu {
                Picker("Location", selection: $locationText) {
                    ForEach(sources, id: \.self) { str in
                        Text(str)
                    }
                }
            } label: {
                Text(locationText)
                    .foregroundColor(.black)
                    .lineLimit(1)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .padding(Constants.locationBarPadding)
        .background(
            RoundedRectangle(cornerRadius: .infinity)
                .strokeBorder(.gray)
        )
    }
}

struct LocationBar_Previews: PreviewProvider {
    static var previews: some View {
        LocationBarView()
    }
}
