//
//  Fractions_AppTests.swift
//  Fractions_AppTests
//
//  Created by Satya Prakash on 2/19/18.
//  Copyright © 2018 Shweta Prakash. All rights reserved.
//

import XCTest
@testable import Fractions_App

class Fractions_AppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFraction() {
        
        var den = 0
        var obj =  Fractions()
        XCTAssertFalse(obj.isDenominatorZero(den: den))
        
    }
    
    func testAdd() {
        
        let obj1 = Fractions(num:1, den:2)
        let obj2 = Fractions(num:1, den:3)
        let result = obj1.add(f: obj2)
        XCTAssertTrue(result.description == "5/6")
    }
    
    func testSubtract() {
        
        let obj1 = Fractions(num:1, den:2)
        let obj2 = Fractions(num:1, den:3)
        let result = obj1.subtract(f: obj2)
        XCTAssert(result.description == "1/6")
    }
    func testMultiply() {
        
        let obj1 = Fractions(num:1, den:2)
        let obj2 = Fractions(num:1, den:3)
        let result = obj1.multiply(f: obj2)
        XCTAssert(result.description == "1/6")
    }
    func testDivide() {
        
        let obj1 = Fractions(num:1, den:2)
        let obj2 = Fractions(num:1, den:3)
        let result = obj1.divide(f: obj2)
        XCTAssert(result.description == "3/2")
    }
    
    func testReduce() {
        let obj1 = Fractions.init(num:1, den:2)
        let obj2 = Fractions.init(num:3, den:6)
        XCTAssertTrue(obj2.reduce() == obj1.reduce())
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
