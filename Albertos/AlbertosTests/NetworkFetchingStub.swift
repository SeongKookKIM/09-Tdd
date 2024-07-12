//
//  NetworkFetchingStub.swift
//  AlbertosTests
//
//  Created by SeongKook on 7/12/24.
//

import XCTest
import Combine

@testable import Albertos

class NetworkFetchingStub: NetworkFetching {
    private let result: Result<Data, URLError>
    init(returning result: Result<Data, URLError>) {
        self.result = result
    }
}
