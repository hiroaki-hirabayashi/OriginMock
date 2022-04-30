//
//  ServiceIntroductionPageControlView.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/30.
//

import SwiftUI

struct ServiceIntroductionPageControlView: View {
    @EnvironmentObject var viewModel: ServiceIntroductionViewModel
    
    var body: some View {
        let bounds = UIScreen.main.bounds
        let width: CGFloat = bounds.width
        let height: CGFloat = bounds.height
        
        VStack(alignment: .center, spacing: 24) {
            // イラスト領域は数値指定ではなく、縦は画面の4割にする
            ZStack {
                VStack(spacing: 0) {
                    Image(self.viewModel.pageModeles[self.viewModel.page].backgroundImageName)
                        .resizable()
                        .scaledToFit()
                        .padding(.vertical, 24)
                }
            }.frame(width: width, height: CGFloat(height * 0.4))
            
            // テキスト表示
            HStack {
                Text(self.viewModel.pageModeles[self.viewModel.page].text)
                    .font(.system(size: 18).bold())
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    .background(Color.white)
            }
            .padding(.horizontal, 16)
            .frame(maxHeight: .infinity, alignment: .center)
        }
    }
}

struct ServiceIntroductionPageControlView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceIntroductionPageControlView()
            .environmentObject(ServiceIntroductionViewModel())
    }
}
