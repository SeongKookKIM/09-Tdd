//
//  MenuFetcher.swift
//  Albertos
//
//  Created by SeongKook on 7/12/24.
//

import Foundation
import Combine

class MenuFetcher: MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], Error> {
        return Future { $0(.success([])) }.eraseToAnyPublisher()
    }
}
