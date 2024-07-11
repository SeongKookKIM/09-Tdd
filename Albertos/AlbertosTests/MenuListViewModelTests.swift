//
//  MenuListViewModelTests.swift
//  AlbertosTests
//
//  Created by SeongKook on 7/11/24.
//

import XCTest
@testable import Albertos
import Combine

final class MenuListViewModelTests: XCTestCase {
    
    private var cancellables = Set<AnyCancellable>()
    /*
     func testCallsGivenGroupingFunction() {
     var called = false
     let inputSections = [MenuSection.fixture()]
     let probeClosure: ([MenuItem]) -> [MenuSection] = { _ in
     called = true
     return inputSections
     }
     
     let viewModel = MenuList.ViewModel(menu: [.fixture()], menuGrouping: probeClosure)
     let sections = viewModel.sections
     
     // Check that the given closure was called
     XCTAssertTrue(called)
     // Check that the returned value was build with the closure
     XCTAssertEqual(sections, inputSections)
     }
     */
    func testWhenFetchingStartsPublishesEmptyMenu() {
        let viewModel = MenuList.ViewModel()
        XCTAssertTrue(viewModel.sections.isEmpty)
    }
    
    func testWhenFetchingAndSucceedsSectionsReceivedMenuAndGivenGroupingClosure() {
        var receivedMenu: [MenuItem]?
        var expectedSections: [MenuSection] = [.fixture()]
        
        let spyClosure: ([MenuItem]) -> [MenuSection] = { items in
            receivedMenu = items
            return expectedSections
        }
        
        let viewModel = MenuList.ViewModel(
            menuFetching: MenuFetchingSample(),
            menuGrouping: spyClosure
        )
        
        let expectation = XCTestExpectation(description: "받은 메뉴와 주어진 그룹화 클로저를 사용하여 생성된 섹션들을 발행합니다.")
        
        viewModel.$sections
            .dropFirst()
            .sink { value in
                XCTAssertEqual(receivedMenu, menu)
                XCTAssertEqual(value, expectedSections)
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 1)
    }
}
