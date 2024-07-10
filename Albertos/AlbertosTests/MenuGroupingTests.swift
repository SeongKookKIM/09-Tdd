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
        // 메뉴아아템이 동일한 카테고리를 같는 경우 하나의 섹션으로 구분
        let menu = [
            MenuItem(category: "pastas"),
            MenuItem(category: "pastas"),
        ]
        let sections = groupMenuByCategory(menu)
        XCTAssertEqual(sections.count, 1)
    }
    
    func testEmptyMenuReturnsEmptySections() {
        let menu = [MenuItem]()
        let sections = groupMenuByCategory(menu)
        XCTAssertTrue(sections.isEmpty)
    }
}
