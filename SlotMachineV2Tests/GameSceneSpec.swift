//
//  GameSceneSpec.swift
//  SlotMachineV2
//
//  Created by Thinh Luong on 4/17/17.
//  Copyright © 2017 Thinh Luong. All rights reserved.
//

import Nimble
import Quick
@testable import SlotMachineV2

class GameSceneSpec: QuickSpec {
    override func spec() {
        describe("GameScene") {
            var gameScene: GameScene!
            
            beforeEach {
                gameScene = GameScene()
            }
            
            afterEach {
                gameScene = nil
            }
            
            it("should have slotMachine") {
                expect(gameScene.slotMachine).toNot(beNil())
            }
            
            it("should have display node"){
                expect(gameScene.displayNode).toNot(beNil())
            }
            
            it("should display the display node"){
                expect(gameScene.displayNode.parent).to(be(gameScene))
            }
            
            it("should display slotMachine's slots in displayNode") {
                expect(gameScene.displayNode.text).to(equal(gameScene.slotMachine.slots.reduce("") {text, slot in
                    return text + " " + slot
                }))
            }
        }
    }
}
