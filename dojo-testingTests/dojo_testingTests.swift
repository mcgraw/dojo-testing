//
//  dojo_testingTests.swift
//  dojo-testingTests
//
//  Created by David McGraw on 1/19/15.
//  Copyright (c) 2015 David McGraw. All rights reserved.
//

import UIKit
import XCTest

class dojo_testingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testViewControllerLoad() {
        let vc = ViewController()
        
        XCTAssertNotNil(vc.view, "View did not load for ViewController")
    }
}
