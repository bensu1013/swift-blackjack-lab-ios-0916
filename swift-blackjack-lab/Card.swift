//
//  Card.swift
//  swift-blackjack-lab
//
//  Created by Benjamin Su on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Card {
    var suit: String
    var rank: String
    var cardLabel: String
    var cardValue: UInt
    var description: String { return "\(suit)\(rank)" }
    
    init(suit: String, rank: String) {
        self.suit = suit
        self.rank = rank
        self.cardLabel = "\(suit)\(rank)"
        switch rank {
        case "A":
            self.cardValue = 1
        case "K","Q","J","10":
            self.cardValue = 10
        default:
            if let num = UInt(rank) {
                self.cardValue = num
            } else {
                self.cardValue = 0
            }
            
        }
    }
    
    class func validSuits() -> [String]{
        return ["♠︎","♥︎","♦︎","♣︎"]
    }
    
    class func validRanks() -> [String] {
        return ["A","1","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    
    
}








