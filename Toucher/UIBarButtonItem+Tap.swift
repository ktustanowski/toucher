//
//  UIBarButtonItem+Tap.swift
//  Toucher
//
//  Created by Kamil Tustanowski on 11.03.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import UIKit

public extension UIBarButtonItem {
    
    public func tap() {
        checkTarget()
        checkAction()
        
        _ = target?.perform(action)
    }
    
    fileprivate func checkTarget() {
        guard let _ = target else {
            assertionFailure("No target associated!")
            return }
    }
    
    fileprivate func checkAction() {
        guard let _ = action else {
            assertionFailure("No action associated!")
            return }
    }

}
