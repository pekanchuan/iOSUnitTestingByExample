//
//  ClosureInitializerViewControllerTests.swift
//  HardDependenciesTests
//
//  Created by 贾发 on 2021/4/11.
//

import XCTest
@testable import HardDependencies

class ClosureInitializerViewControllerTests: XCTestCase {

    #if false
    func test_zero() {
        XCTFail("Tests not yet implemented by ClosureInitializerViewControllerTests")
    }
    #endif
    
    func test_viewDidAppear() {
        let sut = ClosureInitializerViewController { () -> Analytics in
            Analytics()
        }
        sut.loadViewIfNeeded()
        
        sut.viewDidAppear(false)
    }

}
