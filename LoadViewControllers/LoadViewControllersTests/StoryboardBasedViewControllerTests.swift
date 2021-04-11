//
//  StoryboardBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by 贾发 on 2021/4/11.
//

import XCTest
@testable import LoadViewControllers

class StoryboardBasedViewControllerTests: XCTestCase {
    #if false
    func test_zero() {
        XCTFail("Tests not yet implemented by StoryboardBasedViewControllerTests")
    }
    #endif
    
    func test_loading() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut: StoryboardBasedViewController = sb.instantiateViewController(identifier: String(describing: StoryboardBasedViewController.self))
        
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.label)
    }

}
