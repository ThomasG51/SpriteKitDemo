//
//  GameScene.swift
//  SpriteKitDemo
//
//  Created by Thomas George on 23/03/2022.
//

import SpriteKit

class GameScene: SKScene {
    
    let myFirstNode = SKNode()
    let myFirstSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200, height: 200))
    let myFirstTexturedNode = SKSpriteNode(imageNamed: "ship")
    let blueBox = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100, height: 100))
    let whiteBox = SKSpriteNode(color: UIColor.white, size: CGSize(width: 100, height: 100))
    
    override func didMove(to view: SKView) {
        addChild(self.myFirstNode)
        
        self.myFirstSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        self.myFirstSpriteNode.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(self.myFirstSpriteNode)
        
        self.myFirstTexturedNode.size = CGSize(width: 50, height: 40)
        self.myFirstSpriteNode.zPosition = 1
        self.myFirstSpriteNode.addChild(self.myFirstTexturedNode)
        
        self.blueBox.anchorPoint = CGPoint(x: 1, y: 1)
        self.blueBox.zPosition = 2
        self.myFirstSpriteNode.addChild(self.blueBox)
        
        self.whiteBox.position = CGPoint(x: self.myFirstSpriteNode.size.width / 2, y: self.myFirstSpriteNode.size.height / 2)
        self.myFirstSpriteNode.addChild(self.whiteBox)
    }
    
}
