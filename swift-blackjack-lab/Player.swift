//
//  Player.swift
//  swift-blackjack-lab
//
//  Created by Benjamin Su on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Player {
    var name : String   =   ""
    var cards: [Card]   =   []
    var handscore: UInt     {return getHandscore()}
    var blackjack: Bool     {return getBlackjack()}
    var busted: Bool        {return getBusted()}
    var stayed: Bool    =   false
    var mayHit: Bool        {return getMayHit()}
    var tokens: UInt
    var description: String {return "\(self)"}
    
    init(name: String) {
        self.name = name
        self.tokens = 100
    }
    
    func getDescription() -> String {
        return "\(self)"
    }
    
    func getHandscore() -> UInt{
        var aceCount = 0
        var totalScore: UInt = 0
        for card in cards {
            totalScore += card.cardValue
            card.rank == "A" ? aceCount += 1 : ()
        }
        if totalScore <= 11 && aceCount > 0 {
            totalScore += 10
        }
        
        return totalScore
    }
    
    func getBlackjack() -> Bool {
        return cards.count == 2 && handscore == 21 ? true : false
    }
    
    func getBusted() -> Bool {
        return handscore > 21 ? true : false
    }

    func getMayHit() -> Bool {
        return !busted && !blackjack && !stayed ? true : false
    }
    
    func canPlaceBet(_ amount: UInt) -> Bool {
        return amount <= tokens ? true : false
    }
    
    func didWin(bet: UInt) {
        tokens += bet
    }
    
    func didLose(bet: UInt) {
        tokens -= bet
    }
    
    
}


