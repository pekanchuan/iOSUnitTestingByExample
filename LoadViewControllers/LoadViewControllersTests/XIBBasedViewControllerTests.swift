//
//  XIBBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by 贾发 on 2021/4/11.
//

import XCTest
@testable import LoadViewControllers

class XIBBasedViewControllerTests: XCTestCase {

    #if false
    func test_zero() {
        XCTFail("Tests not yet implemented by XIBBasedViewControllerTests")
    }
    #endif
    
    func test_loading() {
        let sut = XIBBasedViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label)
    }

}
