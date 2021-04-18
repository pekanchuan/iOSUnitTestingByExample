//
//  ViewControllerTests.swift
//  NetworkRequestTests
//
//  Created by 贾发 on 2021/4/18.
//

import XCTest
@testable import NetworkRequest

class ViewControllerTests: XCTestCase {

//    func testZero() {
//        XCTFail("Tests not yet implemented by ViewControllerTests")
//    }

    func testTappingButtonShouldMakeDataTaskToSearchForEBookOutFromBoneville() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self))
        
        let mockURLSession = MockURLSession()
        sut.session = mockURLSession
        sut.loadViewIfNeeded()
        
        tap(sut.button)
        
//        XCTAssertEqual(mockURLSession.dataTaskCallCount, 1, "call count")
//        XCTAssertEqual(mockURLSession.dataTaskArgsRequest.first, URLRequest(url: URL(string: "https://itunes.apple.com/search?media=ebook&term=out%20from%20boneville")!), "request")
        
        mockURLSession.verifyDataTask(with: URLRequest(url: URL(string: "https://itunes.apple.com/search?media=ebook&term=out%20from%20boneville")!))
    }
}
