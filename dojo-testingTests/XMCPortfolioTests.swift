//
//  XMCPortfolioTests.swift
//  dojo-testing
//
//  Created by David McGraw on 1/19/15.
//  Copyright (c) 2015 David McGraw. All rights reserved.
//

import UIKit
import XCTest

class XMCPortfolioTests: XCTestCase {
    
    var porfolio: XMCPortfolio?

    override func setUp() {
        super.setUp()
        
        self.porfolio = XMCPortfolio()
    }
    
    override func tearDown() {
        super.tearDown()
        
        self.porfolio = nil
    }

    func testPorfolioNewPurchase() {
        self.porfolio!.purchaseEquity("TSLA", shares: 100, price: 100.0)
        
        XCTAssertTrue(self.porfolio!.holdings.count == 1, "Portfolio should have 1 holding")
        
        var holding = self.porfolio!.equityForSymbol("TSLA")
        
        XCTAssertNotNil(holding, "Symbol TSLA should not be nil")
        XCTAssertTrue(holding!.totalCost == 10000.0, "Total cost did not equal 10000")
    }
    
    func testPortfolioAddShares() {
        self.porfolio!.purchaseEquity("TSLA", shares: 100, price: 100.0)
        self.porfolio!.purchaseEquity("TSLA", shares: 100, price: 120.0)
        
        var holding = self.porfolio!.equityForSymbol("TSLA")
        XCTAssertTrue(holding!.shares == 200, "This holding should have 200 shares")
        XCTAssertTrue(holding!.totalCost == 22000, "Total cost did not equal 22000")
    }
    
}
