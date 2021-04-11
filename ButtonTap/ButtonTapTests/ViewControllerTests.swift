//
//  ViewControllerTests.swift
//  ButtonTapTests
//
//  Created by 贾发 on 2021/4/11.
//

import XCTest
@testable import ButtonTap

class ViewControllerTests: XCTestCase {

    #if false
    func test_zero() {
        XCTFail("Tests not yet implemented by ViewControllerTests")
    }
    #endif
    
    func test_tappingButton() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        
        tap(sut.button)
    }

}
