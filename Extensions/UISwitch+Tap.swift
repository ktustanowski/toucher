//
//  UISwitch+Tap.swift
//  Toucher
//
//  Created by Kamil Tustanowski on 11.03.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import UIKit

public extension UISwitch {
    
    public func on() {
        isOn = true
        sendActions(for: .valueChanged)
    }
    
    public func off() {
        isOn = false
        sendActions(for: .valueChanged)
    }
    
}
