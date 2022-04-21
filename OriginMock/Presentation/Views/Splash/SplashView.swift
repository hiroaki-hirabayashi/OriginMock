//
//  Splash.swift
//  OriginMock
//
//  Created by Hiroaki-Hirabayashi on 2022/04/18.
//

import SwiftUI

/// スプラッシュ画面 LanchScreenでも良いかも
struct SplashView: View {
    @StateObject var viewModel = SplashViewModel()
    var body: some View {
        ZStack {
            // hex color E3324F / ED9764
//            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8901960784, green: 0.1960784314, blue: 0.3098039216, alpha: 1)), Color(#colorLiteral(red: 0.9294117647, green: 0.5921568627, blue: 0.3921568627, alpha: 1))]), startPoint: .center, endPoint: .bottom)
            LinearGradient(gradient: Gradient(colors: [Color.E3324F, Color.ED9764]), startPoint: .center, endPoint: .bottom)
                // セーフエリアまで全部
                .ignoresSafeArea()
            VStack {
                Text("SplashView")
                    .foregroundColor(.black)
                    .font(.system(size: 50))
                Image("dog")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 20)
            }
        }
        .onAppear {
            // TODO: 固定待つ？lanchscreenは？
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                self.viewModel.setRouting()
            }
        }
    }
    
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
