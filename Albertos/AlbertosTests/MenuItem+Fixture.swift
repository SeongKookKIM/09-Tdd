//
//  MenuItem+Fixture.swift
//  AlbertosTests
//
//  Created by SeongKook on 7/11/24.
//

import Foundation
@testable import Albertos


extension MenuItem {
    static func fixture(
        category: String = "category",
        name: String = "name",
        spicy: Bool = false
    ) -> MenuItem {
        MenuItem(category: category, name: name, spicy: spicy)
    }
}
