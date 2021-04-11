//
//  OverrideViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by 贾发 on 2021/4/11.
//

import XCTest
@testable import HardDependencies

private class TestableOverrideViewController: OverrideViewController {
    override func analytics() -> Analytics {
        Analytics()
    }
}

class OverrideViewControllerTests: XCTestCase {

    #if false
    func test_zero() {
        XCTFail("Test not yet implemented by OverrideViewControllerTests")
    }
    #endif

    func test_viewDidAppear() {
        let sut = TestableOverrideViewController()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }
}
