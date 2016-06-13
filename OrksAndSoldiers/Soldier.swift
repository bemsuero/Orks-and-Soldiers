//
//  Soldier.swift
//  OrksAndSoldiers
//
//  Created by Bem on 6/12/16.
//  Copyright © 2016 Bem. All rights reserved.
//

import Foundation

class Soldier: Player {
    private var _name = "Player Two"
    
    var name: String {
        get {
        return _name
        }
    }
    
        convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(hp: hp, attackPwr: attackPwr)
        
        _name = name
    }
}
