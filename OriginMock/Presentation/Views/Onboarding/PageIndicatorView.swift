//
//  PageIndicatorView.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/30.
//

import SwiftUI

struct PageIndicatorView: View {
    // Constants
    private let spacing: CGFloat = 10
    
    // Settings
    let numPages: Int
    @Binding var selectedIndex: Int
    @State private var animate = false
    
    init(numPages: Int, currentPage: Binding<Int>) {
        self.numPages = numPages
        self._selectedIndex = currentPage
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: spacing) {
                ForEach((0..<numPages)) {
                    DotIndicator(
                        pageIndex: $0,
                        slectedPage: self.$selectedIndex
                    ).frame(
                        width: self.selectedIndex == $0 ? 12 : 8,
                        height: self.selectedIndex == $0 ? 12 : 8
                    )
                }
            }
            .animation(self.animate ? .spring() : nil)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.animate = true
            }
        }
    }
}

struct PageIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        PageIndicatorView(numPages: 3, currentPage: .constant(1))
    }
}
