//
//  SlotMachineV2Tests.swift
//  SlotMachineV2Tests
//
//  Created by Thinh Luong on 4/3/17.
//  Copyright © 2017 Thinh Luong. All rights reserved.
//

import Nimble
import Quick
@testable import SlotMachineV2

class SlotMachineSpec: QuickSpec {
    override func spec() {
        describe("SlotMachine") {
            var slotMachine: SlotMachine!
            
            beforeEach {
                slotMachine = SlotMachine()
            }
            
            context("initial display") {
                it("should set default display") {
                    expect(slotMachine.display).to(equal("Pull to play"))
                }
                it("should have slots"){
                    expect(slotMachine.slots).to(equal(["*","*","*"]))
                }
            }
            
            context("pullHandle") {
                it("should display \"You win\"") {
                    slotMachine.pullHandle()
                    expect(slotMachine.display).to(equal("You win"))
                }
                it("should spin the slots") {
                    slotMachine.pullHandle()
                    expect(slotMachine.slots).to(equal(["H", "H", "H"]))
                }
            }
            
            
        }
    }
}
