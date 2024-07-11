//
//  MenuSection+Fixture.swift
//  AlbertosTests
//
//  Created by SeongKook on 7/11/24.
//

import Foundation
@testable import Albertos

extension MenuSection {
    static func fixture(
        category: String =  "a category",
        items: [MenuItem] = [.fixture()]
    ) -> MenuSection {
        return MenuSection(category: category, items: items)
    }
}
