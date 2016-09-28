//
//  Dealer.swift
//  swift-blackjack-lab
//
//  Created by Benjamin Su on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Dealer {
    var deck : Deck = Deck()
    var house : House = House(name: "House")
    var player : House = House(name: "Player")
    var bet : UInt = 0
    
    
    func placeBet(_ amount: UInt) -> Bool {
        if house.canPlaceBet(amount) && player.canPlaceBet(amount) {
            bet = amount
            return true
        } else {
            return false
        }
    }
    
    func deal() {
        player.cards.append(deck.drawCard())
        player.cards.append(deck.drawCard())
        house.cards.append(deck.drawCard())
        house.cards.append(deck.drawCard())
    }
    
    func turn(_ user: House) {
        if !user.busted {
            if user.mustHit {
                user.cards.append(deck.drawCard())
            } else {
                user.stayed = true
            }
        }
    }
    
    func winner() -> String{
        var winnerIs = "no"
        if !house.blackjack {
            if !house.busted && house.cards.count >= 5 {
                winnerIs = "house"
            }
            if house.handscore == player.handscore {
                winnerIs = "house"
            }
        } else {
            winnerIs = "house"
        }
        if !player.blackjack {
            if !player.busted && player.cards.count >= 5 {
                winnerIs = "player"
            }
        } else {
            winnerIs = "player"
        }
        
        return winnerIs
    }
    
    
    func award() -> String{
        let win = winner()
        if win == "player" {
            player.didWin(bet: bet)
            house.didLose(bet: bet)
        } else if win == "house" {
            house.didWin(bet: bet)
            player.didLose(bet: bet)
        }
        return "\(win) wins the round!"
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}

















