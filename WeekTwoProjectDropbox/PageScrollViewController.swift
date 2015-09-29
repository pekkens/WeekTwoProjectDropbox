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
    
    var pageImages: [UIImage] = []
    var pageViews: [UIImageView?] = []
    
    //MARK: Outlets
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var pageControl: UIPageControl!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        
        }
    }
    
    //MARK: Functions
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
    
    // Get the current page based on the scroll offset
        var page: Int = Int(round(scrollView.contentOffset.x / 320))
    
    //Set the current page, so the dots will update
        
        //pageControl.currentPage = page
    }

    func scrollViewDidScroll(scrollView: UIScrollView!) {
    // This method is called as the user scrolls
    }

    func scrollViewWillBeginDragging(scrollView: UIScrollView!) {
    
    }

    func scrollViewDidEndDragging(scrollView: UIScrollView!,
    willDecelerate decelerate: Bool) {
        // This method is called right as the user lifts their finger
    }

    //func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
    // This method is called when the scrollview finally stops scrolling.
    //}


