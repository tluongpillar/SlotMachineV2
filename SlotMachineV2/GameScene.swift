//
//  GameScene.swift
//  SlotMachineV2
//
//  Created by Thinh Luong on 4/3/17.
//  Copyright © 2017 Thinh Luong. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var slotMachine: SlotMachine!
    var displayNode: SKLabelNode!
    
    override func sceneDidLoad() {
        slotMachine = SlotMachine()
        displayNode = SKLabelNode()
        self.addChild(displayNode)
    }
}
