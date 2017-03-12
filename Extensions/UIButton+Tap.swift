//
//  UIButton+Tap.swift
//  Toucher
//
//  Created by Kamil Tustanowski on 11.03.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import UIKit

public extension UIButton {
    
    public func perform(_ event: UIControlEvents) {        
        sendActions(for: event)
    }
    
    public func tap() {
        sendActions(for: UIControlEvents.allTouchEvents)
    }
}
