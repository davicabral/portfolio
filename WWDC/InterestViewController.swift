//
//  InterestViewController.swift
//  WWDC
//
//  Created by Davi Cabral de Oliveira on 21/04/15.
//  Copyright (c) 2015 Davi Cabral de Oliveira. All rights reserved.
//

import UIKit

class InterestViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func tapMenu(sender: AnyObject) {
        self.sideMenuViewController.presentLeftMenuViewController()
    }

    
}
