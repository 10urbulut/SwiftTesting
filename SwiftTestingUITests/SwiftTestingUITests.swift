//
//  SwiftTestingUITests.swift
//  SwiftTestingUITests
//
//  Created by Onur Bulut on 5.10.2023.
//

import XCTest

final class SwiftTestingUITests: XCTestCase {

  
    func testToDoItem() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        
        let addButton =  app.navigationBars["SwiftTesting.View"].buttons["Add"]
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews.textFields["Enter Item"]
        let okButton =  app.alerts["Add Item"].scrollViews.otherElements.buttons["Ok"]
        
        let addedCell = app.tables.cells.containing(.staticText, identifier: "my to do").element
        addButton.tap()
        textField.typeText("my to do")
        okButton.tap()
        
        XCTAssertTrue(addedCell.exists)
                
    }
    
    
    func testDeleteItem()throws{
        
        
        
        let app = XCUIApplication()
        app.launch()
        
        
        
        let addButton =  app.navigationBars["SwiftTesting.View"].buttons["Add"]
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews.textFields["Enter Item"]
        let okButton =  app.alerts["Add Item"].scrollViews.otherElements.buttons["Ok"]
        
        let addedCell = app.tables.cells.containing(.staticText, identifier: "my to do").element
        addButton.tap()
        textField.typeText("my to do")
        okButton.tap()
        
        
        let tablesQuery = app.tables
        
        let deleteButton = tablesQuery.buttons["Delete"]
        
        addedCell.swipeLeft()
        deleteButton.tap()
        
        XCTAssertFalse(addedCell.exists)
        
        
        
    }

 
}
