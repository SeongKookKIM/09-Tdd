//
//  MenuRow.ViewModel.swift
//  Albertos
//
//  Created by SeongKook on 7/11/24.
//

import Foundation

extension MenuRow {
    struct ViewModel {
        let text: String
        
        init(item: MenuItem) {
            self.text = item.spicy ? "\(item.name) (매운맛)" : item.name
        }
    }
}
