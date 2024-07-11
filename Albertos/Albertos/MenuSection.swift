//
//  MenuSection.swift
//  Albertos
//
//  Created by SeongKook on 7/10/24.
//

import Foundation

struct MenuSection: Identifiable, Equatable {
    let category: String
    let items: [MenuItem]
    
    var id: String { category }
}
