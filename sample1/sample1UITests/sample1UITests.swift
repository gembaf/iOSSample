//
//  sample1UITests.swift
//  sample1UITests
//
//  Created by Fumiya Gemba on 2016/10/24.
//  Copyright © 2016年 gembaf. All rights reserved.
//

import XCTest

class sample1UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let app = XCUIApplication()

        let lhsTextField = app.textFields["lhsTextField"]
        let rhsTextField = app.textFields["rhsTextField"]
        let calculateButton = app.buttons["calculateButton"]
        let resultLabel = app.staticTexts["resultLabel"]
        
        lhsTextField.tap()
        lhsTextField.typeText("6")
        
        rhsTextField.tap()
        rhsTextField.typeText("7")

        calculateButton.tap()
        
        XCTAssertTrue(resultLabel.label == "13")
    }
    
}
