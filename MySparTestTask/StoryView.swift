//
//  StoryView.swift
//  MySparTestTask
//
//  Created by sergey on 12.08.2023.
//

import SwiftUI

struct StoryView: View {
    @State var isSeen: Bool
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Circle()
                .fill(.gray)
                .padding(C.Spacing.small)
                .background(
                    Circle()
                        .strokeBorder(isSeen ? .gray : .green, lineWidth: C.Spacing.small/2)
                )
            Text("Voluptate aliquip nisi anim est pariatur et deserunt commodo consequat consequat adipisicing esse eu veniam.")
                .multilineTextAlignment(.center)
                .lineLimit(2)
        }
        .onTapGesture {
            isSeen.toggle()
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(isSeen: false)
    }
}
