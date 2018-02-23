//
//  AppCenterTestUITests.swift
//  AppCenterTestUITests
//
//  Created by A656440 on 2/23/18.
//  Copyright © 2018 Aetna Health. All rights reserved.
//

import XCTest

import AppCenterXCUITestExtensions

let app = ACTLaunch.launch(XCUIApplication())

class AppCenterTestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app?.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {

        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["Second"].tap()
        tabBarsQuery.buttons["First"].tap()
        app.staticTexts["First View"].tap()

    }
    
}
