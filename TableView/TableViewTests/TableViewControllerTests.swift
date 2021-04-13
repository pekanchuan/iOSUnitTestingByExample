//
//  TableViewControllerTests.swift
//  TableViewTests
//
//  Created by 贾发 on 2021/4/13.
//

import XCTest
@testable import TableView

class TableViewControllerTests: XCTestCase {
    private var sut: TableViewController!

    override func setUp() {
        super.setUp()
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        sut = sb.instantiateViewController(identifier: String(describing: TableViewController.self))
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        sut = nil
        
        super.tearDown()
    }
    
    func test_tableViewDelegates_shouldBeConnected() {
        XCTAssertNotNil(sut.tableView.delegate, "delegate")
        XCTAssertNotNil(sut.tableView.dataSource, "dataSource")
    }

    func test_numberOfRows_shouldBe3() {
//        XCTAssertEqual(sut.tableView.dataSource?.tableView(sut.tableView, numberOfRowsInSection: 0), 3)
        XCTAssertEqual(numberOfRows(in: sut.tableView), 3, "numberOfRows")
    }
    
    func test_cellForRowAt_withRow0_shouldSetCellLabelToOne() {
//        let cell = sut.tableView.dataSource?.tableView(sut.tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        let cell = cellForRow(in: sut.tableView, row: 0)
        
        XCTAssertEqual(cell?.textLabel?.text, "One")
    }
    
    func test_cellForRowAt_withRow0_shouldSetCellLabelToTwo() {
        let cell = cellForRow(in: sut.tableView, row: 1)
        
        XCTAssertEqual(cell?.textLabel?.text, "Two")
    }
    
    func test_cellForRowAt_withRow0_shouldSetCellLabelToThree() {
        let cell = cellForRow(in: sut.tableView, row: 2)
        
        XCTAssertEqual(cell?.textLabel?.text, "Three")
    }
    
    func test_didSelectRow_withRow1() {
//        sut.tableView.delegate?.tableView?(sut.tableView, didSelectRowAt: IndexPath(row: 1, section: 0))
        didSelectRow(in: sut.tableView, row: 1)
    }
}
