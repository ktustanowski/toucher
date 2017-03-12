//
//  UISlider+Tap.swift
//  Toucher
//
//  Created by Kamil Tustanowski on 11.03.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import UIKit

public extension UISlider {
    
    public func slide(to value: Float) {
        self.value = value
        sendActions(for: .valueChanged)
    }
}
