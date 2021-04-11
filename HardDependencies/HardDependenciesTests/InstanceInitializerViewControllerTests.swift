//
//  InstanceInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by 贾发 on 2021/4/11.
//

import XCTest
@testable import HardDependencies

class InstanceInitializerViewControllerTests: XCTestCase {

    #if false
    func test_zero() {
        XCTFail("Tests not yet implemented by InstanceInitializerViewControllerTests")
    }
    #endif
    
    func test_viewDidAppear() {
        let sut = InstanceInitializerViewController(analytics: Analytics())
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }

}
