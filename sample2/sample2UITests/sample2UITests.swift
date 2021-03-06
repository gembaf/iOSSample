//
//  sample2UITests.swift
//  sample2UITests
//
//  Created by Fumiya Gemba on 2016/11/04.
//  Copyright © 2016年 gembaf. All rights reserved.
//

import XCTest

class sample2UITests: XCTestCase {
    
    var app = XCUIApplication()
    
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
    
    // トップページにアクセスした場合
    func testTopPage() {
        let page1TitleLabel = app.staticTexts["page1TitleLabel"]
        
        // Page1と表示されていること
        XCTAssertTrue(page1TitleLabel.label == "Page1")
    }
    
    // ページ遷移ボタンを押した場合
    func testNextPageButton() {
        let toPage2Button = app.buttons["toPage2Button"]
        let page2TitleLabel = app.staticTexts["page2TitleLabel"]
        
        toPage2Button.tap()
        
        // 次のページへ遷移していること
        XCTAssertTrue(page2TitleLabel.label == "Page2")
    }
}
