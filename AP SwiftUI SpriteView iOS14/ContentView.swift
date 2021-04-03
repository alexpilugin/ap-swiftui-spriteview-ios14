//
//  ContentView.swift
//  AP SwiftUI SpriteView iOS14
//
//  Created by Alex Pilugins on 02/04/2021.
//  New in iOS 14

/*  Based on https://www.hackingwithswift.com/quick-start/swiftui/how-to-integrate-spritekit-using-spriteview
 or youtube: https://www.youtube.com/watch?v=4XKOPH6PXBY
 
 Inquiry regarding SwiftUI and SpriteKit Integration:
 https://www.hackingwithswift.com/forums/swiftui/inquiry-regarding-swiftui-and-spritekit-integration/6872
*/

import SwiftUI
import SpriteKit

// A sample SwiftUI creating a GameScene and sizing it at 300x400 points
struct ContentView: View {
    
    /*
        EnvironmentObject is immutable, properties of EnvironmentObject is mutable
        https://developer.apple.com/forums/thread/652075
    */
    @EnvironmentObject var settings: GameSettings
    
    var scene: SKScene {
        let scene =  GameScene(score: $settings.score)
        //scene.showsFPS = true //<---- ERROR
        //scene.showsNodeCount = true //<---- ERROR
        return scene
    }

    var body: some View {
        VStack {
            SpriteView(scene: scene)
                .frame(width: 300, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            Text("Score: \(self.settings.score)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GameSettings())
    }
}
