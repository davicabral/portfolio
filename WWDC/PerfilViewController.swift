//
//  PerfilViewController.swift
//  WWDC
//
//  Created by Davi Cabral de Oliveira on 21/04/15.
//  Copyright (c) 2015 Davi Cabral de Oliveira. All rights reserved.
//

import UIKit

class PerfilViewController: ViewController {

    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.backgroundColor = UIColor.clearColor()
        self.navigationController?.navigationBar.translucent = true
        self.navigationController?.navigationBarHidden = true

    }
    
    @IBAction func tapMenu(sender: AnyObject) {
        self.sideMenuViewController.presentLeftMenuViewController()
    }
    
    
}
