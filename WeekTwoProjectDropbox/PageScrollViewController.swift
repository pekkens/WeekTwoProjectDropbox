//
//  PageScrollViewController.swift
//  WeekTwoProjectDropbox
//
//  Created by Prisca Ekkens on 9/28/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class PageScrollViewController: UIViewController, UIScrollViewDelegate, UIPageViewControllerDelegate{
    
    //MARK: Global Variables
    
    //var pageImages: [UIImage] = []
    //var pageViews: [UIImageView?] = []
    
    
    //MARK: Outlets
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet weak var backupBtnSwitch: UISwitch!
    @IBOutlet weak var backupStatusLabel: UILabel!
    @IBOutlet weak var spinBtn: UIButton!
    @IBOutlet weak var interactiveView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.delegate = self
        self.interactiveView.hidden = true

        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        self.interactiveView.hidden = false
        
        let offset = CGFloat(scrollView.contentOffset.x)
        let alphaOffset = (offset + 320)
        let alpha = convertValue(alphaOffset, r1Min: 960, r1Max: 1280, r2Min: 0, r2Max: 1)
        
        interactiveView.alpha = alpha
        
        print("alpha is: \(alpha)")
        print("alphaOffset is: \(alphaOffset)")
        print("content offset: \(scrollView.contentOffset.x)")
        
    }

    //MARK: Actions
    
    @IBAction func backupSwitchBtnPressed(sender: AnyObject) {
        if backupBtnSwitch.on
            
        {
            backupStatusLabel.text = "Photos & Videos Backed Up"
        }
        else
            
        { backupStatusLabel.text = "Back Up Photos & Videos"
            
        }
    }
    
    @IBAction func spinBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("carouselSegue", sender: nil)
    }
    
    
    
    //MARK: Functions
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
    
    // Get the current page based on the scroll offset
        let page: Int = Int(round(scrollView.contentOffset.x / 320))
    
    //Set the current page, so the dots will update
        
        pageControl.currentPage = page
        print("scrolling... scrolling... scrolling... rawhide!")
        
        }
    }

//    func scrollViewDidScroll(scrollView: UIScrollView!) {
//    // This method is called as the user scrolls
//    }
//
//    func scrollViewWillBeginDragging(scrollView: UIScrollView!) {
//    
//    }
//
//    func scrollViewDidEndDragging(scrollView: UIScrollView!,
//    willDecelerate decelerate: Bool) {
//        // This method is called right as the user lifts their finger
//    }
//
//    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
//     This method is called when the scrollview finally stops scrolling.
//    }
