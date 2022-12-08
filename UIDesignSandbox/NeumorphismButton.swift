//
//  NeumorphismButton.swift
//  UIDesignSandbox
//
//  Created by jun.ogino on 2022/12/07.
//

import SwiftUI

struct NeumorphismButton: View {
    let bgColor = Color.init(red: 0.92, green: 0.93, blue: 0.94)
    let grayColor = Color.init(white: 0.8, opacity: 1)

    var body: some View {
        ZStack {
            // whiteの影を使うため若干グレーがかった背景を使う
            bgColor.ignoresSafeArea()
            Button(action: {
                print("button tapped")
            }){
                Text("Newmorphism Button")
                    .font(.system(size: 25, weight: .semibold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(bgColor)
                            // 上側の凸をshadowで表現
                            .shadow(color: .white, radius: 10, x: -7, y: -7)
                            // 下側の凸をshadowで表現
                            .shadow(color: grayColor, radius: 10, x: 7, y: 7)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.gray, lineWidth: 0)
                    )
            }
        }
    }
}

struct NeumorphismButton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphismButton()
    }
}
