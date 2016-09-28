//
//  Deck.swift
//  swift-blackjack-lab
//
//  Created by Benjamin Su on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Deck {
    var dealtCards: [Card] = []
    var undealtCards: [Card] = []
    var description: String {return getDescription()}
    
    
    
    init() {
        for suit in 0...3{
            for rank in 0...12{
                undealtCards.append(Card(suit: Card.validSuits()[suit], rank: Card.validRanks()[rank]))
            }
        }
    }
    
    func getDescription() -> String {
        return "Cards Remaining: \(undealtCards.count)\nCards Dealt: \(dealtCards.count)"
    }
    
    func drawCard() -> Card {
        let nextCard = undealtCards.removeFirst()
        dealtCards.append(nextCard)
        return nextCard
    }
    
    func shuffle() {
        for _ in 1...128 {
            undealtCards.append(undealtCards.remove(at: Int(arc4random_uniform(UInt32(undealtCards.count)))))
        }
    }
}















