//
//  ork.swift
//  OrksAndSoldiers
//
//  Created by Bem on 6/12/16.
//  Copyright © 2016 Bem. All rights reserved.
//

import Foundation

class Ork: Player {
    private var _name = "Player One"
    
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

