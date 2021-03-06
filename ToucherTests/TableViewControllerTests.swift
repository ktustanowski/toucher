//
//  ToucherTests.swift
//  ToucherTests
//
//  Created by Kamil Tustanowski on 08.03.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import XCTest
import UIKit
@testable import Toucher

class TableViewControllerTests: XCTestCase {
    
    var viewController: TableViewController!
    
    override func setUp() {
        super.setUp()
        
        let navigationController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! UINavigationController
        viewController = navigationController.viewControllers.first as! TableViewController
        viewController.loadViewIfNeeded()
    }
    
    //MARK: Bar Button Item
    func testThatWhenUserTapTopPlusButtonIncrementsTitle() {
        viewController.topPlusButton.tap()
        
        XCTAssertEqual(viewController.title, "1")
    }

    func testThatWhenUserTapTopMinusButtonDecrementsTitle() {
        viewController.topMinusButton.tap()
        
        XCTAssertEqual(viewController.title, "-1")
    }

    //MARK: UIButton
    func testThatWhenUserTapBottomPlusButtonIncrementsTitle() {
        viewController.bottomPlusButton.tap()
        
        XCTAssertEqual(viewController.title, "1")
    }
    
    func testThatWhenUserTapBottomMinusButtonDecrementsTitle() {
        viewController.bottomMinusButton.tap()
        
        XCTAssertEqual(viewController.title, "-1")
    }
    
    //MARK: UISegmentedControl
    func testThatWhenUserTapFirstSegmentIncrementsTitle() {
        viewController.plusSegmented.tap(on: 0)
        
        XCTAssertEqual(viewController.title, "1")
    }

    func testThatWhenUserTapFirstSegmentIncrementsTitleByTwo() {
        viewController.plusSegmented.tap(on: 1)
        
        XCTAssertEqual(viewController.title, "2")
    }

    func testThatWhenUserTapFirstSegmentIncrementsTitleByThree() {
        viewController.plusSegmented.tap(on: 2)

        XCTAssertEqual(viewController.title, "3")
    }

    //MARK: UISwitch
    func testThatWhenUserSwitchOffCounterSwitchPadlockIsVisible() {
        viewController.counterSwitch.off()

        XCTAssertEqual(viewController.title, "🔒")
    }
    
    func testThatWhenUserSwitchOffCounterSwitchCounterCantBeIncremented() {
        viewController.counter = 5
        viewController.counterSwitch.off()
        viewController.topPlusButton.tap()
        
        viewController.counterSwitch.on()
        
        XCTAssertEqual(viewController.title, "5")
    }

    func testThatWhenUserSwitchOffCounterSwitchCounterCantBeDecremented() {
        viewController.counter = 5
        viewController.counterSwitch.off()
        viewController.topMinusButton.tap()

        viewController.counterSwitch.on()
        
        XCTAssertEqual(viewController.title, "5")
    }

// MARK: UIStepper
//    func testThatWhenUserTapPlusOnStepperCurrentValueIsSetToCounter() {
//        viewController.counterStepper.tap(.increment)
//        
//        XCTAssertEqual(viewController.title, "1")
//    }
    
//    func testThatWhenUserTapMinusOnStepperCurrentValueIsSetToCounter() {
//        viewController.counterStepper.tap(.increment)
//        viewController.counterStepper.tap(.increment)
//        viewController.counterStepper.tap(.decrement)
//        
//        XCTAssertEqual(viewController.title, "1")
//    }
    
// MARK: UISlider
    func testThatWhenUserSlidesSliderCounterValueIsSet() {
        viewController.counterSlider.slide(to: 7)
        
        XCTAssertEqual(viewController.title, "7")
    }
    
// MARK: UITableView
    func testThatWhenUserTapIncrementCellCounterIsIncremented() {
        viewController.tableView.tapRow(at: IndexPath(row: TableCells.plus, section: Sections.tableCells))
        
        XCTAssertEqual(viewController.title, "1")
    }
    
    func testThatWhenUserTapDecrementCellCounterIsDecremented() {
        viewController.tableView.tapRow(at: IndexPath(row: TableCells.minus, section: Sections.tableCells))
        
        XCTAssertEqual(viewController.title, "-1")
    }
    
    func testThatWhenUserTapAccessoryButtonOnIncrementCellCounterIsSetToPlusString() {
        viewController.tableView.tapAccessoryButton(forRowAt: IndexPath(row: TableCells.plus, section: Sections.tableCells))
        
        XCTAssertEqual(viewController.title, "+")
    }
    
    func testThatWhenUserTapAccessoryButtonOnDecrementCellCounterIsSetToPlusString() {
        viewController.tableView.tapAccessoryButton(forRowAt: IndexPath(row: TableCells.minus, section: Sections.tableCells))
        
        XCTAssertEqual(viewController.title, "-")
    }

// MARK: UICollectionView
    func testThatWhenUserTapOnRedCollectionViewCellCounterIsIncremented() {
        viewController.collectionView.tapItem(at: IndexPath(item: CollectionCells.plus, section: 0))

        XCTAssertEqual(viewController.title, "1")
    }
}

//Might have to check continous, step etc. and calculate value properly
//public enum UIStepperSegment: Double {
//    case increment = 1.0
//    case decrement = -1.0
//}
//
//public extension UIStepper {
//    
//    public func tap(_ segment: UIStepperSegment) {
//        self.
//        //        value += stepValue * segment.rawValue
//        sendActions(for: .valueChanged)
//    }
//    
//}

