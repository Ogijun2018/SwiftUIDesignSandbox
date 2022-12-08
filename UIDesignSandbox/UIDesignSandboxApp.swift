//
//  UIDesignSandboxApp.swift
//  UIDesignSandbox
//
//  Created by jun.ogino on 2022/12/06.
//

import SwiftUI

@main
struct UIDesignSandboxApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                SkeuomorphismButton()
                    .tabItem {
                        VStack {
                            Image(systemName: "1.square")
                            Text("Skeuomorphism")
                        }
                    }.tag(1)
                FlatDesignButton()
                    .tabItem {
                        VStack {
                            Image(systemName: "2.square")
                            Text("Flat Design")
                        }
                    }.tag(2)
                NeumorphismButton()
                    .tabItem {
                        VStack {
                            Image(systemName: "3.square")
                            Text("Neumorphism")
                        }
                    }.tag(3)
                GlassmorphismButton()
                    .tabItem {
                        VStack {
                            Image(systemName: "4.square")
                            Text("Glassmorphism")
                        }
                    }.tag(4)
                ClaymorphismButton()
                    .tabItem {
                        VStack {
                            Image(systemName: "5.square")
                            Text("Claymorphism")
                        }
                    }.tag(5)
            }
        }
    }
}
