//
//  DotIndicator.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/30.
//

import SwiftUI

struct DotIndicator: View {
    let minScale: CGFloat = 1
    let maxScale: CGFloat = 1.1
    let minOpacity: Double = 0.2
    
    let pageIndex: Int
    @Binding var slectedPage: Int
    
    var body: some View {
        Capsule()
            .scaleEffect(
                slectedPage == pageIndex
                ? maxScale
                : minScale
            )
            .foregroundColor(
                slectedPage == pageIndex
                ? .yellow
                : .black.opacity(minOpacity)
            )
    }
}

struct DotIndicator_Previews: PreviewProvider {
    static var previews: some View {
        DotIndicator(pageIndex: 0, slectedPage: .constant(0))
            .previewLayout(.fixed(width: 10, height: 10))
            .previewDisplayName("Hello")
    }
}
