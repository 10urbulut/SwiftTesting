//
//  SwiftTestingTests.swift
//  SwiftTestingTests
//
//  Created by Onur Bulut on 5.10.2023.
//

import XCTest
@testable import SwiftTesting

final class SwiftTestingTests: XCTestCase {


let math = MathematicFunctions()
    
    func testAddFunction() {
        let result = math.addIntegers(x: 5, y: 8)
        
        XCTAssertEqual(result, 13)
    }
    
    
    func testMultiplyFunction() {
        let result = math.multiplyIntegers(x: 8, y: 8)
        
        XCTAssertEqual(result, 64)
    }
    
    
    func testDivideFunction() {
        let result = math.divideIntegers(x: 50, y: 5)
        
        XCTAssertEqual(result, 10)
    }

}
