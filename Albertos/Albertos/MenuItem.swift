//
//  MenuItem.swift
//  Albertos
//
//  Created by SeongKook on 7/10/24.
//

import Foundation

struct MenuItem {
    var category: String
}

func groupMenuByCategory(_ menu: [MenuItem]) -> [MenuSection] {
    if menu.isEmpty { return [] }
    
    return [MenuSection()]
}
