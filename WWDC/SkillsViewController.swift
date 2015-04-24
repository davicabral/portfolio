//
//  SkillsViewController.swift
//  WWDC
//
//  Created by Davi Cabral de Oliveira on 23/04/15.
//  Copyright (c) 2015 Davi Cabral de Oliveira. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

    @IBOutlet weak var tecBar: PNBarChart!
    @IBOutlet weak var projBar: PNBarChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tecBar.backgroundColor = UIColor.clearColor()
        tecBar.xLabels = ["Swift","ObjC","Java","Unity3D"]
        tecBar.yLabels = [1,4,7,10]
        tecBar.yLabelFormatter = ({(yValue: CGFloat) -> String! in
            return ""
        })

        tecBar.yValues = [3,3.4,2.5,4]
        tecBar.strokeColor = UIColor(red:0.09, green:0.7, blue:0.55, alpha:1)
        tecBar.barRadius = 15
        tecBar.labelTextColor = UIColor.blackColor()
        
        
        projBar.backgroundColor = UIColor.clearColor()
        projBar.xLabels = ["Design Thinking","CBL","Scrum"]
        projBar.yLabelFormatter = ({(yValue: CGFloat) -> String! in
            return ""
        })
        projBar.yValues = [3,3.4,3.6]
        projBar.strokeColor = UIColor(red:0.6, green:0.3, blue:0.55, alpha:1)
        projBar.barRadius = 15
        projBar.labelTextColor = UIColor.blackColor()
//        let mask = UIImageView(image: UIImage(named: "Copo"))
//        projBar.maskView = mask
        
        
        
        
        tecBar.strokeChart()
        projBar.strokeChart()
        
        // Do view setup here.
    }
    
    @IBAction func tapMenu(sender: AnyObject) {
        self.sideMenuViewController.presentLeftMenuViewController()
    }
    
}
