//
//  GameScene.swift
//  AP SwiftUI SpriteView iOS14
//
//  Created by Alex Pilugins on 02/04/2021.
//

import SwiftUI
import SpriteKit

// A simple game scene with falling boxes
class GameScene: SKScene {
    
    //@Binding var settings: GameSettings
    @Binding var score: Int
    
    /**
     # EnvironmentObject usage in init() of a View
     
     https://www.hackingwithswift.com/forums/swiftui/environmentobject-usage-in-init-of-a-view/5795
     https://developer.apple.com/forums/thread/652075
     The environment is passed down when the body is called, so it doesn't yet exist during the initialization phase of the View struct.
     
        init(settings: Binding<GameSettings>) {
            _settings = settings
            super.init(size: CGSize(width: 300, height: 400))
            self.scaleMode = .fill
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) is not supported")
            //super.init(coder: aDecoder)
        }
    */
    
    init(score: Binding<Int>) {
        _score = score
        super.init(size: CGSize(width: 300, height: 400))
        self.scaleMode = .fill
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) is not supported")
        // super.init(coder: aDecoder)
    }
    
    
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let box = SKSpriteNode(color: SKColor.red, size: CGSize(width: 50, height: 50))
        box.position = location
        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        self.addChild(box)
        //score += 1
        /*
        let ball = SKShapeNode(circleOfRadius: 30)
        ball.fillColor = SKColor.gray
        ball.position = location
        self.addChild(ball)
        */
        print("Nodes: \(self.children.count), score: \(score)")
    }
}
