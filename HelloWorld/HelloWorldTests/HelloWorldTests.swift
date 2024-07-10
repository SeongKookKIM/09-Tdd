//
//  HelloWorldTests.swift
//  HelloWorldTests
//
//  Created by SeongKook on 7/10/24.
//

import XCTest
@testable import HelloWorld

func isLeap(_ year: Int) -> Bool {
    return false
}

final class HelloWorldTests: XCTestCase {
    func testEvenlyDivisibleBy4IsLeap() {
        XCTAssertTrue(isLeap(2020))
    }
    
    func testEvenlyDivisibleBy100IsNotLead() {
        
    }
    
    func testEvenlyDivisibleBy400IsLeap() {
        
    }
    
    func testEvenlyDivisibleBy4or400IsNotLeap() {
        
    }
}
