//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

extension BankVault {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        guard password.count > 1 && password.count < 11 else {return false}
        for (index, item) in password.enumerated() {
            if index % 2 == 0 && item % 2 != 0 {
                return false
            }
        }
        return true
    }
}
