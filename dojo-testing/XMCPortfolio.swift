//
//  XMCPortfolio.swift
//  dojo-testing
//
//  Created by David McGraw on 1/19/15.
//  Copyright (c) 2015 David McGraw. All rights reserved.
//

import UIKit

class XMCPortfolio: NSObject {
    
    var holdings = [String: XMCStock]()
    
    func equityForSymbol(symbol: String) -> XMCStock? {
        return holdings[symbol]
    }
    
    func purchaseEquity(ticker: String, shares: Double, price: Double) {
        if let equity = holdings[ticker] {
            equity.addShares(shares, price: price)
        } else {
            holdings[ticker] = XMCStock(ticker: ticker, shares: shares, price: price)
        }
    }
}
