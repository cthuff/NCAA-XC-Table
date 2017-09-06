//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

class JumpSetup {
    
    func eventSetup()
    {
        event_tripleJumpDistance = loadTripleJump()
        event_longJumpDistance = loadLongJump()
        event_highJumpHeight = loadHighJump()
        event_poleVaultHeight = loadPoleVault()
        
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
            let time = split[eventIndex + 4]

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
            let time = split[eventIndex + 4]
 
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
            let time = split[eventIndex + 4]

            athlete.append(time)
        }
        return athlete
    }

    func loadPoleVault() -> [String] {
        let csv = Bundle.main.url(forResource: "PoleVaultFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[eventIndex + 4]

            athlete.append(time)
        }
        return athlete
    }

}
