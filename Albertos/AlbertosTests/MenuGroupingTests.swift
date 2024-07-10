//
//  AlbertosTests.swift
//  AlbertosTests
//
//  Created by SeongKook on 7/10/24.
//

import XCTest
@testable import Albertos // Privte등 모든거를 볼 수 있고 사용할 수 있게 만들어줌.

final class MenuGroupingTests: XCTestCase {

    func testMenuWithManyCategoriesReturnsOneSectionPerCategory() {
        
    }
    
    func testMenuWithManyCategoriesReturnOneSection() {
        
    }
    
    func testEmptyMenuReturnsEmptySections() {
        let menu = [MenuItem]()
        let sections = groupMenuByCategory(menu)
        XCTAssertTrue(sections.isEmpty)
    }
}
