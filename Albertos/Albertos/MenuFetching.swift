//
//  MenuFetching.swift
//  Albertos
//
//  Created by SeongKook on 7/11/24.
//

import Foundation
import Combine

protocol MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], Error>
}
