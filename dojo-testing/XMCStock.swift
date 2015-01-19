//
//  XMCStock.swift
//  dojo-testing
//
//  Created by David McGraw on 1/19/15.
//  Copyright (c) 2015 David McGraw. All rights reserved.
//

import UIKit

class XMCStock: NSObject {
   
    var ticker = ""
    var shares = 0.0
    var price = 0.0
    var totalCost = 0.0
    
    init(ticker: String, shares: Double, price: Double) {
        self.ticker = ticker
        self.shares = shares
        self.price = price
        
        totalCost = shares * price
    }
    
    func addShares(shares: Double, price: Double) {
        self.totalCost += shares * price
        
        self.shares += shares
        self.price = self.totalCost / self.shares
    }
}
