//
//  MyClassTests.swift
//  LifeCycleTests
//
//  Created by 贾发 on 2021/4/9.
//

import XCTest
@testable import LifeCycle

class MyClassTests: XCTestCase {

//    func test_zero() {
//        XCTFail("Tests not yet implemented in MyClassTests")
//    }

    func test_methodOne() {
        let sut = MyClass()
        sut.methodOne()
        XCTAssertTrue(true)
    }
    
    func test_methodTwo() {
        let sut = MyClass()
        sut.methodTwo()
        XCTAssertTrue(true)
    }
}
