//
//  ProfessionalViewController.swift
//  WWDC
//
//  Created by Davi Cabral de Oliveira on 21/04/15.
//  Copyright (c) 2015 Davi Cabral de Oliveira. All rights reserved.
//

import UIKit

class ProfessionalViewController: ViewController, UIScrollViewDelegate {

    @IBOutlet weak var mScrollView: UIScrollView!
    @IBOutlet weak var mPageController: UIPageControl!
    
    @IBOutlet weak var mTextView: UITextView!
    
    var imageArray = [UIImage]()
    var descriptionArray = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        imageArray = getTextureArrayFromAssets(baseName: "project", numberOfTextures: 5)
        
        let bepidDescription = "I participate in the BEPiD at Fortaleza’s site since September 2014. I developed apps using several frameworks like Health and sprite kit. I have learned a lot of things, but not only technical skills, also have learned about project management, communication skills and teamwork."
        
        let hotPocketDescription = "Hot Pocket is a group of mobile game development that uses unity 3D as a game engine. The team is focused at the creation of casual games."

        let codiJrDescription = "I am the president and founder of Container Digital Junior that is a junior enterprise of my course, System and Digital Medias, at Federal University of Ceará. It has focus at development of apps, mobile and analogic games."
        
        let boardDescription = "It was the product of my first challenge at BEPiD. Being in process of review at TestFlight. Board Discovery consist in an app to locate new indies boardgames. More details can be checked in following link. http://goo.gl/MTsKhi "
       
        let heartWarsDescription = "This app was the product created at the second mini challenge. It is waiting for review at TestFlight. Heart Wars is a pervasive game that uses player’s heart rate through a cardiac sensor as a mechanism of interaction between user and game. "
        
        descriptionArray.append(bepidDescription)
        descriptionArray.append(hotPocketDescription)
        descriptionArray.append(codiJrDescription)
        descriptionArray.append(boardDescription)
        descriptionArray.append(heartWarsDescription)

        
        for var i = 0; i < imageArray.count; i++
        {
            var rect = CGRect()
            rect.size = CGSize(width: 250, height: 250)
            rect.origin.x = mScrollView.frame.size.width * CGFloat(i)
            rect.origin.y = 0
            rect.size = self.mScrollView.frame.size
            
            let image = UIImageView(frame: rect)
            image.image = imageArray[i]
            mScrollView.addSubview(image)
            
        }
        
        mTextView.text = bepidDescription
        
        mPageController.numberOfPages = imageArray.count
        mScrollView.contentSize = CGSize(width: mScrollView.frame.size.width * CGFloat(imageArray.count), height: mScrollView.frame.size.height)
            //CGSizeMake(self.scrollView.frame.size.width * colors.count, self.scrollView.frame.size.height);

    }
    
    @IBAction func tapMenu(sender: AnyObject) {
        self.sideMenuViewController.presentLeftMenuViewController()
    }
    
    
    //MARK: ScrollView Delegate
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let pageWidth = mScrollView.frame.size.width;
        let page = floor((mScrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
        mPageController.currentPage = Int(page);
        mTextView.text = descriptionArray[Int(page)]
    }
    
    //MARK: Images Method
    func getTextureArrayFromAssets(#baseName:String, numberOfTextures numTextures:Int) -> [UIImage]
    {
        var imageArray = [UIImage]()
        for i in 0..<numTextures
        {
            let temp = UIImage(named: baseName+i.description)
            imageArray.append(temp!)
        }
        return imageArray
    }

    
}
