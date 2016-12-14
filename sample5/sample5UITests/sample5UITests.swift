//
//  sample5UITests.swift
//  sample5UITests
//
//  Created by Fumiya Gemba on 2016/12/14.
//  Copyright © 2016年 gembaf. All rights reserved.
//

import XCTest

class sample5UITests: XCTestCase {
        
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
    
    // アプリを起動した直後
    func testExample() {
        let app = XCUIApplication()
        let myTextView = app.textViews["myTextView"]
        let myButton = app.buttons["myButton"]

        // client connectedと表示されていること
        var value = myTextView.value as! String
        XCTAssertTrue(value.contains("client connected"))

        // ボタンを押した場合
        myButton.tap()
        // button pushedと表示されていること
        value = myTextView.value as! String
        XCTAssertTrue(value.contains("button pushed"))
    }
    
}
