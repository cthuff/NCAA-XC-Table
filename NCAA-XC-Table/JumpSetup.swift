//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

class JumpSetup {
    
    func setup()
    {
        men_tripleJumpDistance = loadTripleJump()
        men_tripleJumpDistance = men_tripleJumpDistance.sorted()
        men_longJumpDistance = loadLongJump()
        men_longJumpDistance = men_longJumpDistance.sorted()
        men_highJumpHeight = loadHighJump()
        men_highJumpHeight = men_highJumpHeight.sorted()
        men_poleVaultHeight = loadPoleVault()
        men_poleVaultHeight = men_poleVaultHeight.sorted()
    }
    
    func loadTripleJump() -> [String] {
        let csv = Bundle.main.url(forResource: "TripleJumpFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
//            let place = split[0]
            let time = split[4]

           athlete.append(time)
        }
        return athlete
    }
    
    func loadLongJump() -> [String] {
        let csv = Bundle.main.url(forResource: "LongJumpFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[4]
 
            athlete.append(time)
        }
        return athlete
    }

    func loadHighJump() -> [String] {
        let csv = Bundle.main.url(forResource: "HighJumpFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[4]

            athlete.append(time)
        }
        return athlete
    }

    func loadPoleVault() -> [String] {
        let csv = Bundle.main.url(forResource: "PoleVaultThrowFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[4]

            athlete.append(time)
        }
        return athlete
    }

}
