//
//  ViewControllerTests.swift
//  TextFieldTests
//
//  Created by 贾发 on 2021/4/12.
//

import XCTest
@testable import TextField

class ViewControllerTests: XCTestCase {
    
    private var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        let sb = UIStoryboard(name: "Main", bundle: nil)
        sut = sb.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_outlets_shouldBeConnected() {
        XCTAssertNotNil(sut.usernameField, "usernameField")
        XCTAssertNotNil(sut.passwordField, "passwordField")
    }
    
    func test_usernameField_attributesShouldBeSet() {
        let textField = sut.usernameField!
        XCTAssertEqual(textField.textContentType, .username, "textContentType")
        XCTAssertEqual(textField.autocorrectionType, .no, "autocorrectionType")
        XCTAssertEqual(textField.returnKeyType, .next, "returnKeyType")
    }

    func test_passwordField_attributesShouldBeSet() {
        let textField = sut.passwordField!
        
        XCTAssertEqual(textField.textContentType, .password, "textContentType")
        XCTAssertEqual(textField.returnKeyType, .go, "returnKeyType")
        XCTAssertTrue(textField.isSecureTextEntry, "isSecureTextEntry")
    }
    
    func test_testFieldDelegate_shouldBeConnected() {
        XCTAssertNotNil(sut.usernameField.delegate, "usernameField")
        XCTAssertNotNil(sut.passwordField.delegate, "passwordField")
    }
    
    func test_shouldChangeCharacters_usernameWithSpaces_shouldPreventChange() {
        let allowChange = shouldChangeCharacters(in: sut.usernameField, replacement: "a b")
        XCTAssertEqual(allowChange, false)
    }
    
    func test_shouldChangeCharacters_usernameWithoutSpaces_shouldAllowChange() {
        let allowChange = shouldChangeCharacters(in: sut.usernameField, replacement: "abc")
        XCTAssertEqual(allowChange, true)
    }
    
    func test_shouldChangeCharacters_passwordWithSpaces_shouldAllowChange() {
        let allowChange = shouldChangeCharacters(in: sut.passwordField, replacement: "a b")
        XCTAssertEqual(allowChange, true)
    }
    
    func test_shouldChangeCharacters_passwordWithoutSpaces_shouldAllowChange() {
        let allowChange = shouldChangeCharacters(in: sut.passwordField, replacement: "abc")
        XCTAssertEqual(allowChange, true)
    }
    
    func test_shouldReturn_withPassword_shouldPerformLogin() {
        sut.usernameField.text = "USERNAME"
        sut.passwordField.text = "PASSWORD"
        
//        _ = sut.passwordField.delegate?.textFieldShouldReturn?(sut.passwordField)
        shouldReturn(in: sut.passwordField)
    }
    
    func test_shouldReturn_withUsername_shouldMoveInputFocusToPassword() {
        putInViewHierarchy(sut)
        
        shouldReturn(in: sut.usernameField)
        
        XCTAssertTrue(sut.passwordField.isFirstResponder)
    }
    
    func test_shouldReturn_withPassword_shouldDismissKeyboard() {
        putInViewHierarchy(sut)
        sut.passwordField.becomeFirstResponder()
        XCTAssertTrue(sut.passwordField.isFirstResponder, "preconditioin")
        
        shouldReturn(in: sut.passwordField)
        XCTAssertFalse(sut.passwordField.isFirstResponder)
    }
}
