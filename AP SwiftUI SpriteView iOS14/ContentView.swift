//
//  ContentView.swift
//  AP SwiftUI SpriteView iOS14
//
//  Created by Alex Pilugins on 02/04/2021.
//  New in iOS 14

/*  Based on https://www.hackingwithswift.com/quick-start/swiftui/how-to-integrate-spritekit-using-spriteview
 
 Inquiry regarding SwiftUI and SpriteKit Integration:
 https://www.hackingwithswift.com/forums/swiftui/inquiry-regarding-swiftui-and-spritekit-integration/6872
*/

import SwiftUI
import SpriteKit

// A sample SwiftUI creating a GameScene and sizing it at 300x400 points
struct ContentView: View {
    
    @EnvironmentObject var settings: GameSettings
    
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: 300, height: 400)
        scene.scaleMode = .fill
        return scene
    }

    var body: some View {
        SpriteView(scene: scene)
            .frame(width: 300, height: 400)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
