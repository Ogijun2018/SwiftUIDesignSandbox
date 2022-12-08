//
//  GlassmorphismButton.swift
//  UIDesignSandbox
//
//  Created by jun.ogino on 2022/12/08.
//

import SwiftUI

struct GlassmorphismButton: View {
    let frontGradientView: LinearGradient = LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
    let backGradientView: LinearGradient = LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .offset(x: 50, y: 50)
                .foregroundStyle(backGradientView)
            Circle()
                .frame(width: 200, height: 200)
                .offset(x: -50, y: -50)
                .foregroundStyle(frontGradientView)
            Button(action: {
                print("button tapped")
            }){
                Text("Glassmorphism Button")
                    .font(.system(size: 25, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            // ぼかし効果
                            .foregroundStyle(.ultraThinMaterial)
                            // ドロップシャドウで立体感を表現
                            .shadow(color: .init(white: 0.4, opacity: 0.4), radius: 5, x: 0, y: 0)
                    )
                    .overlay(
                        // strokeでガラスの縁を表現
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.init(white: 1, opacity: 0.5), lineWidth: 1)
                    )
            }
        }
    }
}

struct GlassmorphismButton_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphismButton()
    }
}
