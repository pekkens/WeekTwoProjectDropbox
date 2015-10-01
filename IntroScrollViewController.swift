//
//  IntroScrollViewController.swift
//  WeekTwoProjectDropbox
//
//  Created by Prisca Ekkens on 9/27/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class IntroScrollViewController: UIViewController, UIScrollViewDelegate {
    

    // MARK: Outlets
    
    @IBOutlet weak var introScroll: UIScrollView!
    @IBOutlet weak var introContent: UIImageView!
    @IBOutlet weak var tileOne: UIImageView!
    @IBOutlet weak var tileTwo: UIImageView!
    @IBOutlet weak var tileThree: UIImageView!
    @IBOutlet weak var tileFour: UIImageView!
    @IBOutlet weak var tileFive: UIImageView!
    @IBOutlet weak var tileSix: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationController?.navigationBarHidden = true
        
        
        //Configure content size manually and wordks without calling ScrollViewDelegate
        //introScroll.contentSize = CGSize (width: 320, height: 1825)
        
        // Configure the content size automatically but must call/set delegate
        
        introScroll.contentSize = CGSizeMake(320, introContent.image!.size.height)
        introScroll.delegate = self
        
        introScroll.sendSubviewToBack(introContent)
        
    }
    
    
    
    
    // MARK: Functions
    
    func    scrollViewDidScroll(introScroll: UIScrollView) {
        
        let offset = CGFloat(introScroll.contentOffset.y)
        
        //content offset: 0->568
        //x offset: -30->0
        //y offset: -285->0
        
        //TODO: concise code using method
        
        
        let transXOne = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -50, r2Max: 0.0)
        let transYOne = convertValue(offset, r1Min: -0, r1Max: 568.0, r2Min: -0315, r2Max: 0.0)
        let scaleOne = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.0, r2Max: 1.0)
        let rotationOne = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)

        tileOne.transform = CGAffineTransformMakeTranslation (CGFloat (transXOne), CGFloat (transYOne))
        tileOne.transform = CGAffineTransformScale(tileOne.transform, CGFloat(scaleOne), CGFloat(scaleOne))
        tileOne.transform = CGAffineTransformRotate(tileOne.transform, CGFloat(Double(rotationOne) * M_PI / 180))
        
        let transXTwo = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 25, r2Max: 0.0)
        let transYTwo = convertValue(offset, r1Min: -0, r1Max: 568.0, r2Min: -275, r2Max: 0.0)
        let scaleTwo = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.95, r2Max: 1.0)
        let rotationTwo = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tileTwo.transform = CGAffineTransformMakeTranslation (CGFloat (transXTwo), CGFloat (transYTwo))
        tileTwo.transform = CGAffineTransformScale(tileTwo.transform, CGFloat(scaleTwo), CGFloat(scaleTwo))
        tileTwo.transform = CGAffineTransformRotate(tileTwo.transform, CGFloat(Double(rotationTwo) * M_PI / 180))
        
        let transXThree = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -2, r2Max: 0.0)
        let transYThree = convertValue(offset, r1Min: -0, r1Max: 568.0, r2Min: -435, r2Max: 0.0)
        let scaleThree = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.9, r2Max: 1.0)
        let rotationThree = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        
        tileThree.transform = CGAffineTransformMakeTranslation (CGFloat (transXThree), CGFloat (transYThree))
        tileThree.transform = CGAffineTransformScale(tileThree.transform, CGFloat(scaleThree), CGFloat(scaleThree))
        tileThree.transform = CGAffineTransformRotate(tileThree.transform, CGFloat(Double(rotationThree) * M_PI / 180))
        
        let transXFour = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 110, r2Max: 0.0)
        let transYFour = convertValue(offset, r1Min: -0, r1Max: 568.0, r2Min: -395, r2Max: 0.0)
        let scaleFour = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 2.3, r2Max: 1.0)
        let rotationFour = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        
        tileFour.transform = CGAffineTransformMakeTranslation (CGFloat (transXFour), CGFloat (transYFour))
        tileFour.transform = CGAffineTransformScale(tileFour.transform, CGFloat(scaleFour), CGFloat(scaleFour))
        tileFour.transform = CGAffineTransformRotate(tileFour.transform, CGFloat(Double(rotationFour) * M_PI / 180))
        
        let transXFive = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -105, r2Max: 0.0)
        let transYFive = convertValue(offset, r1Min: -0, r1Max: 568.0, r2Min: -522, r2Max: 0.0)
        let scaleFive = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.5, r2Max: 1.0)
        let rotationFive = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 8, r2Max: 0)
        
        tileFive.transform = CGAffineTransformMakeTranslation (CGFloat (transXFive), CGFloat (transYFive))
        tileFive.transform = CGAffineTransformScale(tileFive.transform, CGFloat(scaleFive), CGFloat(scaleFive))
        tileFive.transform = CGAffineTransformRotate(tileFive.transform, CGFloat(Double(rotationFive) * M_PI / 180))
        
        let transXSix = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -113, r2Max: 0.0)
        let transYSix = convertValue(offset, r1Min: -0, r1Max: 568.0, r2Min: -499, r2Max: 0.0)
        let scaleSix = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.75, r2Max: 1.0)
        let rotationSix = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        tileSix.transform = CGAffineTransformMakeTranslation (CGFloat (transXSix), CGFloat (transYSix))
        tileSix.transform = CGAffineTransformScale(tileSix.transform, CGFloat(scaleSix), CGFloat(scaleSix))
        tileSix.transform = CGAffineTransformRotate(tileSix.transform, CGFloat(Double(rotationSix) * M_PI / 180))
        
        print("content offset: \(introScroll.contentOffset.y)")
        
    }
    

    @IBAction func createBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("CreateVeiwControllerSegue", sender: nil)
    }

    @IBAction func signInBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("SignInVeiwControllerSegue", sender: nil)
    }
 

}
