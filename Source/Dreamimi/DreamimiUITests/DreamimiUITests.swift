//
//  DreamimiUITests.swift
//  DreamimiUITests
//
//  Created by Sergey Germanovich on 20/09/2019.
//  Copyright © 2019 MindTeam. All rights reserved.
//

import XCTest

class DreamimiUITests: XCTestCase {
    
    override func setUp() {
        continueAfterFailure = false
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testOa(){
        XCUIApplication().buttons["Продолжить"].tap()
    }
    
    func testDS() {
        XCUIApplication().buttons["Продолжить"].tap()
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testAg() {
        XCUIApplication().buttons["Продолжить"].tap()
    }
    
    func test_zki ()  {
        XCUIApplication().buttons["Продолжить"].tap()
    }
    
    func testGS() {
        snapshot("0Launch")
        XCUIApplication().staticTexts["Продолжить"].tap()
        snapshot("1Launch")
    }
    
    func testContinuedvkhButtonTapped() {
        XCUIApplication().buttons["Продолжить"].tap()
    }
    
}
