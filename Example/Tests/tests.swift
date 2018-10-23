//
//  macDemoTests.swift
//  macDemoTests
//
//  Created by Chengwei Zang on 2018/10/17.
//

import XCTest
import Nimble
import EasyReactSwift

class Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let value = forTest(value: 1)
        expect(value) == 1
    }
}
