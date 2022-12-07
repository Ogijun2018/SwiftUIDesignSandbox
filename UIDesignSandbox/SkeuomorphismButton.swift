//
//  SkeuomorphismButton.swift
//  UIDesignSandbox
//
//  Created by jun.ogino on 2022/12/06.
//

import SwiftUI

struct SkeuomorphismButton: View {
    // 上半分の光沢感をGradientで表現
    let gradientView: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color.init(red: 1, green: 0, blue: 0, opacity: 0.55), Color.init(red: 1, green: 0, blue: 0, opacity: 0.65)]), startPoint: .top, endPoint: .center)

    var body: some View {
        Button(action: {
            print("button tapped")
        }){
            Text("Skeuomorphism Button")
                .font(.system(size: 25))
                .fontWeight(.bold)
                // shadowで凹みを表現
                .shadow(color: .black, radius: 0, x: 0, y: -1)
                .foregroundColor(.white)
                .padding()
                .background( ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundColor(.white)
                    // 上半分
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundStyle(gradientView)
                    // 下半分
                    RoundedRectangle(cornerRadius: 16)
                        .trim(from: 0, to: 0.5)
                        .foregroundColor(.red)
                })
                // 外枠
                .overlay(RoundedRectangle(cornerRadius: 16)
                    .stroke(.gray, lineWidth: 4)
                    // shadowで凹みを表現
                    .shadow(color: .black, radius: 0, x: 0, y: -1)
                )
        }
    }
}

struct SkeuomorphismButton_Previews: PreviewProvider {
    static var previews: some View {
        SkeuomorphismButton()
    }
}
