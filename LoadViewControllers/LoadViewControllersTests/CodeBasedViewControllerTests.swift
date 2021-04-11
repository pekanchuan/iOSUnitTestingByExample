//
//  CodeBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by 贾发 on 2021/4/11.
//

import XCTest
@testable import LoadViewControllers

class CodeBasedViewControllerTests: XCTestCase {

    #if false
    func test_zero() {
        XCTFail("Tests not yet implemented by CodeBasedViewControllerTests")
    }
    #endif
    
    func test_loading() {
        let sut = CodeBasedViewController(data: "DUMMY")
        
        sut.loadViewIfNeeded()
//        XCTAssertNotNil()
    }

}
