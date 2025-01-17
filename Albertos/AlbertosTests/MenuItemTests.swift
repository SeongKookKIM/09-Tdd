//
//  MenuItemTests.swift
//  AlbertosTests
//
//  Created by SeongKook on 7/12/24.
//

import XCTest
@testable import Albertos

final class MenuItemTests: XCTestCase {
    func testWhenDecodedFromJSONDataHasAllTheInputPropeties() throws {
        // Arrange
        let json = #"{ "name": "a name", "category": "a category", "spicy": true }"#
        let jsonData = try XCTUnwrap(json.data(using: .utf8))
        
        // Act
        let item = try JSONDecoder().decode(MenuItem.self, from: jsonData)
        
        //Assert
        XCTAssertEqual(item.name, "a name")
        XCTAssertEqual(item.category, "a category")
        XCTAssertEqual(item.spicy, true)
    }

    func testDecodesFromJSONData() throws {
        
        let data = try dataFromJSONFileNamed("menu_item")
        let item = try JSONDecoder().decode(MenuItem.self, from: data)
        
        XCTAssertEqual(item.name, "a name")
        XCTAssertEqual(item.category, "a category")
        XCTAssertEqual(item.spicy, true)
    }
}
