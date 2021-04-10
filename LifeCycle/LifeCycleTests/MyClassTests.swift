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
    
    private var sut: MyClass!
    
    override func setUp() {
        super.setUp()
        
        sut = MyClass()
    }
    
    override func tearDown() {
        sut = nil
        
        super.tearDown()
    }

    func test_methodOne() {

        sut.methodOne()

    }
    
    func test_methodTwo() {

        sut.methodTwo()

    }
}
