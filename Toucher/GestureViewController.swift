//
//  GestureViewController.swift
//  Toucher
//
//  Created by Kamil Tustanowski on 12.03.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {
    
    var counter = 0 {
        didSet {
            title = "\(counter)"
        }
    }
    
    @IBOutlet var tapRecognizer: UITapGestureRecognizer!
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        counter += 1
    }
    
}
