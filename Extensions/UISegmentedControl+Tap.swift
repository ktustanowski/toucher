//
//  UISegmentedControl+Tap.swift
//  Toucher
//
//  Created by Kamil Tustanowski on 11.03.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import UIKit

public extension UISegmentedControl {
    
    public func tap(on index: Int) { //TODO: maybe update to be able to use .first, .second, .third etc.
        selectedSegmentIndex = index
        sendActions(for: .valueChanged)
    }
}

