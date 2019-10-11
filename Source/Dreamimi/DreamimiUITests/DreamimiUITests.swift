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
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testOa(){
        XCUIApplication().buttons["Продолжить"].tap()
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testAg() {
        XCUIApplication()/*@START_MENU_TOKEN@*/.staticTexts["Продолжить"]/*[[".buttons[\"Продолжить\"].staticTexts[\"Продолжить\"]",".staticTexts[\"Продолжить\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
        
    func testGS() {
        XCUIApplication().staticTexts["Продолжить"].tap()
    }

    func testContinuedvkhButtonTapped() {
        XCUIApplication().buttons["Продолжить"].tap()
    }

}
