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

class ToucherTests: XCTestCase {
    
    var viewController: TableViewController!
    
    override func setUp() {
        super.setUp()
        
        let navigationController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! UINavigationController
        self.viewController = navigationController.viewControllers.first as! TableViewController
        self.viewController.loadViewIfNeeded()
    }
    
    func testThatWhenUserTapTopPlusButtonIncrementsTitle() {
        viewController.topPlusButton.tap()
        
        XCTAssertEqual(viewController.title, "1")
    }

    func testThatWhenUserTapTopMinusButtonDecrementsTitle() {
        viewController.topMinusButton.tap()
        
        XCTAssertEqual(viewController.title, "-1")
    }

    func testThatWhenUserTapBottomPlusButtonIncrementsTitle() {
        viewController.bottomPlusButton.tap()
        
        XCTAssertEqual(viewController.title, "1")
    }
    
    func testThatWhenUserTapBottomMinusButtonDecrementsTitle() {
        viewController.bottomMinusButton.tap()
        
        XCTAssertEqual(viewController.title, "-1")
    }
    
    func testThatWhenUserTapFirstSegmentIncrementsTitle() {
        viewController.plusSegmented.tap(on: 0)
        
        XCTAssertEqual(viewController.title, "1")
    }

    func testThatWhenUserTapFirstSegmentIncrementsTitleByTwo() {
        viewController.plusSegmented.tap(on: 2)
        
        XCTAssertEqual(viewController.title, "2")
    }

    func testThatWhenUserTapFirstSegmentIncrementsTitleByThree() {
        viewController.plusSegmented.tap(on: 3)
        
        XCTAssertEqual(viewController.title, "3")
    }

}

public extension UISegmentedControl {
    
    public func tap(on index: Int) { //maybe update to be able to use .first, .second, .third etc.
        selectedSegmentIndex = index
    }
}

public extension UIButton {
    
    public func perform(_ event: UIControlEvents) {
        sendActions(for: event)
    }
    
    public func tap() {
        sendActions(for: UIControlEvents.allTouchEvents)
    }
}

public extension UIBarButtonItem {
    
    public func tap() {
        guard let target = target else { return }
        
        _ = target.perform(action)
    }
}
