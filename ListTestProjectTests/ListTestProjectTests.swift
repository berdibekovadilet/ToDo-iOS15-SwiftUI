//
//  ListTestProjectTests.swift
//  ListTestProjectTests
//
//  Created by Adilet Berdibekov on 28.11.2021.
//

import XCTest
@testable import ListTestProject

class ListTestProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let manager = TodoListManager.emptyState()
        XCTAssertTrue(manager.items.count == 0, "should start with empty list of todo's")
    }

 

}
