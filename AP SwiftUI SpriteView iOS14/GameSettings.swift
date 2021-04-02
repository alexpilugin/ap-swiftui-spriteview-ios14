//
//  GameSettings.swift
//  AP SwiftUI SpriteView iOS14
//
//  Created by Alex Pilugins on 02/04/2021.
//
// Based on https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-environmentobject-to-share-data-between-views

import Foundation

// Our observable object class
class GameSettings: ObservableObject {
    
    @Published var score = 0
    
}
