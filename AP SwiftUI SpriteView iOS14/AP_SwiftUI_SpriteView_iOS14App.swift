//
//  AP_SwiftUI_SpriteView_iOS14App.swift
//  AP SwiftUI SpriteView iOS14
//
//  Created by Alex Pilugins on 02/04/2021.
//

import SwiftUI

@main
struct AP_SwiftUI_SpriteView_iOS14App: App {
    
    @StateObject private var settings = GameSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(settings)
        }
    }
}
