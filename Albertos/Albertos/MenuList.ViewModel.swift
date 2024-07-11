//
//  MenuList.ViewModel.swift
//  Albertos
//
//  Created by SeongKook on 7/11/24.
//

import Foundation

extension MenuList {
    struct ViewModel {
        let sections: [MenuSection]

        init(menu: [MenuItem], menuGrouping: @escaping ([MenuItem]) -> [MenuSection]) {
            self.sections = menuGrouping(menu)
        }
    }
}
