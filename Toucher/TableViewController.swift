//
//  ViewController.swift
//  Toucher
//
//  Created by Kamil Tustanowski on 08.03.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var plusSegmented: UISegmentedControl!
    @IBOutlet weak var topPlusButton: UIBarButtonItem!
    @IBOutlet weak var topMinusButton: UIBarButtonItem!    
    @IBOutlet weak var bottomPlusButton: UIButton!
    @IBOutlet weak var bottomMinusButton: UIButton!
    @IBOutlet weak var counterSwitch: UISwitch!
    
    var count: Int?
    var counter: Int {
        get {
            return count ?? 0
        }
        
        set {
            if counterSwitch.isOn {
                self.count = newValue
                title = "\(newValue)"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 0
    }

    @IBAction func plusTapped() {
        counter += 1
    }
    
    @IBAction func minusTapped() {
        counter -= 1
    }
    
    @IBAction func plusSegmentedTapped(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        counter += index + 1
    }
    
    @IBAction func counterSwitchTapped(_ sender: UISwitch) {
        self.title = sender.isOn ? "\(counter)" : "🔒"
    }
}

