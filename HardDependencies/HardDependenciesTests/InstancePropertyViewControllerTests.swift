//
//  InstancePropertyViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by 贾发 on 2021/4/11.
//

import XCTest
@testable import HardDependencies

class InstancePropertyViewControllerTests: XCTestCase {

    #if false
    func test_zero() {
        XCTFail("Tests not yet implemented by InstancePropertyViewControllerTests")
    }
    #endif
    
    func test_viewDidAppear() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: InstancePropertyViewController = storyboard.instantiateViewController(identifier: String(describing: InstancePropertyViewController.self))
        sut.analytics = Analytics()
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }

}
