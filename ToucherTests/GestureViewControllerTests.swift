//
//  GestureViewControllerTests.swift
//  Toucher
//
//  Created by Kamil Tustanowski on 12.03.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import XCTest
import UIKit
@testable import Toucher

class GestureViewControllerTests: XCTestCase {
    
    var viewController: GestureViewController!
    
    override func setUp() {
        super.setUp()
        
        viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GestureViewController") as! GestureViewController
        viewController.loadViewIfNeeded()
    }
    
    func testThatWhenUserTapCounterIsIncremented() {
        self.viewController.tapRecognizer.tap()
        
        XCTAssertEqual(viewController.counter, 1)
    }
}

public extension UITapGestureRecognizer {
    
    public func tap() {
        Event()
        let event = EventStub()
//        event.type = .touches
        
        _ = self.view?.hitTest(CGPoint(x: 0, y: 0), with: event)
    }
}

class EventStub: UIEvent {
    override open var type: UIEventType { return .touches }
}
