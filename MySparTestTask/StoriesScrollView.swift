//
//  StoriesScrollView.swift
//  MySparTestTask
//
//  Created by sergey on 12.08.2023.
//

import SwiftUI

struct StoriesScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: C.Spacing.small) {
                ForEach(0..<9) { id in
                    StoryView(isSeen: false)
                }
            }
        }
    }
}

struct StoriesScrollView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesScrollView()
    }
}
