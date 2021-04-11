//
//  ViewControllerTests.swift
//  NavigationTests
//
//  Created by 贾发 on 2021/4/11.
//

import XCTest
@testable import Navigation

// We can't use this for a view controller that comes from a storyboard.
private class TestableViewController: ViewController {
    var presentCallCount = 0
    var presentArgsViewController: [UIViewController] = []
    var presentArgsAnimated: [Bool] = []
    var presentArgsClosure: [(() -> Void)?] = []
    
    override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        presentCallCount += 1
        presentArgsViewController.append(viewControllerToPresent)
        presentArgsAnimated.append(flag)
        presentArgsClosure.append(completion)
    }
}

class ViewControllerTests: XCTestCase {

//    func test_tappingCodePushButton_shouldPushCodeViewController() {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
//        sut.loadViewIfNeeded()
//        let navigation = UINavigationController(rootViewController: sut)
//        
//        tap(sut.codePushButton)
//        
//        executeRunLoop()
//        XCTAssertEqual(navigation.viewControllers.count, 2, "navigation stack")
//        
//        let pushedVC = navigation.viewControllers.last
//        guard let codeNextVC = pushedVC as? CodeNextViewController else {
//            XCTFail("Expected CodeNextController," + "but was \(String(describing: pushedVC))")
//            return
//        }
//        XCTAssertEqual(codeNextVC.label.text, "Pushed from code")
//    }
    
    func test_INCORRECT_tappingCodeModalButton_shouldPresentCodeNextViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        
        UIApplication.shared.windows.first?.rootViewController = sut
        
        tap(sut.codeModalButton)
        
        let presentVC = sut.presentedViewController
        guard let codeNextVC = presentVC as? CodeNextViewController else {
            XCTFail("Expected CodeNextController," + "but was \(String(describing: presentVC))")
            return
        }
        XCTAssertEqual(codeNextVC.label.text, "Modal from code")
    }

}
