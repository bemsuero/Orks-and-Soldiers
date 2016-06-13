//
//  player.swift
//  OrksAndSoldiers
//
//  Created by Bem on 6/12/16.
//  Copyright © 2016 Bem. All rights reserved.
//

import Foundation

class Player {
    private var _hp: Int = 100
    private var _attackPwr: Int = 15
    
    var attackPwr: Int {
        return _attackPwr
    }
    
    var hp: Int {
        return _hp
    }
    
    var isAlive: Bool {
        get {
            if _hp <= 0 {
            return false
    } else {
        return true
}
}
}
    init(hp: Int, attackPwr: Int) {
        self._hp = hp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        return true
}
}