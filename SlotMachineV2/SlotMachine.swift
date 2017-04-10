//
//  SlotMachine.swift
//  SlotMachineV2
//
//  Created by Thinh Luong on 4/3/17.
//  Copyright © 2017 Thinh Luong. All rights reserved.
//

import Foundation

public class SlotMachine {
    public var display: String = "Pull to play"
    public var slots = ["*","*","*"]

    public func pullHandle() {
        slots = ["H", "H", "H"]
        display = "You win"
    }
    
}
