//
//  OutletConnectionsViewControllerTests.swift
//  OutletConnectionsTests
//
//  Created by 贾发 on 2021/4/11.
//

import XCTest
@testable import OutletConnections

class OutletConnectionsViewControllerTests: XCTestCase {

    #if false
    func test_zero() {
        XCTFail("Tests not yet implemented by OutletConnectionsViewControllerTests")
    }
    #endif
    
    func test_outlets_shouldBeConnected() {
        let sut = OutletConnectionsViewController()
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label, "label")
        XCTAssertNotNil(sut.button, "button")
    }

}
