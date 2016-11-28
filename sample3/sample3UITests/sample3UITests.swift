//
//  sample3UITests.swift
//  sample3UITests
//
//  Created by Fumiya Gemba on 2016/11/24.
//  Copyright © 2016年 gembaf. All rights reserved.
//

import XCTest

class sample3UITests: XCTestCase {
        
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
    
    // トップ画面を表示した場合
    func testExample() {
        let app = XCUIApplication()
        let mainLabel = app.staticTexts["mainLabel"]
        // ユーザ名(ほげほげ)が1つ以上表示されていること
        XCTAssertTrue(mainLabel.label.contains("ほげほげ"))
    }
    
}
