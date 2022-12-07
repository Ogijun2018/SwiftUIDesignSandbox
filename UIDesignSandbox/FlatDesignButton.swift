//
//  FlatDesignButton.swift
//  UIDesignSandbox
//
//  Created by jun.ogino on 2022/12/07.
//

import SwiftUI

struct FlatDesignButton: View {
    var body: some View {
        Button(action: {
            print("button tapped")
        }){
            Text("Flat Design Button")
                .font(.system(size: 25))
                .fontWeight(.ultraLight)
                .foregroundColor(.blue)
                .padding()
                .border(.blue, width: 0.5)
        }
    }
}

struct FlatDesignButton_Previews: PreviewProvider {
    static var previews: some View {
        FlatDesignButton()
    }
}
