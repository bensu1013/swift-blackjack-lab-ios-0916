//
//  House.swift
//  swift-blackjack-lab
//
//  Created by Benjamin Su on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class House: Player {
    
    var mustHit: Bool {return getMustHit()}
    
    
    override init(name: String) {
        super.init(name: name)
        self.tokens = 1000
    }
    
    func getMustHit() -> Bool {
        return self.mayHit && self.handscore < 17 ? true : false
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}










































