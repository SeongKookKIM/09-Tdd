//
//  MenuList.ViewModel.swift
//  Albertos
//
//  Created by SeongKook on 7/11/24.
//

import Foundation
import Combine

extension MenuList {
    class ViewModel: ObservableObject {
        @Published var sections: [MenuSection] = []

        private var cancellables = Set<AnyCancellable>()
        
        init(
            menuFetching: MenuFetching = MenuFetchingSample(),
            menuGrouping: @escaping ([MenuItem]) -> [MenuSection] = groupMenuByCategory) {
                menuFetching
                    .fetchMenu()
                    .sink(
                        receiveCompletion: { _ in },
                        receiveValue: { [weak self] value in
                            self?.sections = menuGrouping(value)
                        }
                    )
                    .store(in: &cancellables)
            }
    }
}