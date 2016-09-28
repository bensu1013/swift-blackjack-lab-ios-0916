//
//  AppDelegate.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 7/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    var dealer: Dealer = Dealer()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
    
        
        // Do not alter
        return true  //
    }   ///////////////
    
    func playBlackjack(withBet amount: UInt) {
        dealer.deck.shuffle()
        dealer.deal()
        if dealer.placeBet(amount) {
            while dealer.winner() != "no" {
                dealer.turn(dealer.player)
                dealer.turn(dealer.house)
            }
        }
    }
    
}

