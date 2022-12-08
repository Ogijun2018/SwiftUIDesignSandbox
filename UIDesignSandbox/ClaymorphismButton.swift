//
//  ClaymorphismButton.swift
//  UIDesignSandbox
//
//  Created by jun.ogino on 2022/12/08.
//

import SwiftUI

struct ClaymorphismButton: View {
    let bgColor = Color.init(red:0.90, green: 0.92, blue: 0.98)
    let buttonColor = Color.init(red: 0.38, green: 0.28, blue: 0.86)
    let lightColor = Color.init(red: 0.54, green: 0.41, blue: 0.95)
    let shadowColor = Color.init(red: 0.25, green: 0.17, blue: 0.75)
    let radius = CGFloat(25)

    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            Button(action: {
                print("button tapped")
            }){
                Text("Claymorphism Button")
                    .font(.system(size: 20, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                    .padding(.horizontal, 35)
                    .padding(.vertical, 20)
                    .background(
                        RoundedRectangle(cornerRadius: radius)
                            .fill(
                                // shadowでボタン上部に光沢を持たせる
                                // .innerはiOS16からのみ対応
                                .shadow(.inner(color: lightColor, radius: 6, x: 4, y: 4))
                                // shadowでボタン下部に影を落とす
                                .shadow(.inner(color: shadowColor, radius: 6, x: -2, y: -2))
                            )
                            .foregroundColor(buttonColor)
                            // ボタンのshadowはボタンの色に合わせる
                            .shadow(color: buttonColor, radius: 20, y: 10)
                    )
            }
        }
    }
}

struct ClaymorphismButton_Previews: PreviewProvider {
    static var previews: some View {
        ClaymorphismButton()
    }
}
