//
//  UITableView+Tap.swift
//  Toucher
//
//  Created by Kamil Tustanowski on 11.03.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import UIKit

public extension UITableView {
    
    public func tapRow(at indexPath: IndexPath) {
        checkDelegate()
        checkDataSource()
        check(indexPath: indexPath)
        
        delegate?.tableView?(self, didSelectRowAt: indexPath)
    }
    
    public func tapAccessoryButton(forRowAt indexPath: IndexPath) {
        checkDelegate()
        checkDataSource()
        check(indexPath: indexPath)
        
        delegate?.tableView?(self, accessoryButtonTappedForRowWith: indexPath)
    }
}

fileprivate extension UITableView {
    
    func checkDelegate() {
        guard let _ = delegate else {
            assertionFailure("No delegate associated!")
            return
        }
    }
    
    func checkDataSource() {
        guard let _ = dataSource else {
            assertionFailure("No data source associated!")
            return
        }
    }
    
    func check(indexPath: IndexPath) {
        let sectionCount = dataSource?.numberOfSections?(in: self) ?? 1
        guard indexPath.section >= 0,
            indexPath.section < sectionCount
            else {
                assertionFailure("Not found section \(indexPath.section) in Table View")
                return
        }
        
        
        guard let rowCount = dataSource?.tableView(self, numberOfRowsInSection: indexPath.section),
            indexPath.row >= 0,
            indexPath.row < rowCount
            else {
                assertionFailure("Not found row \(indexPath.row) in Table View")
                return
        }
    }
}
