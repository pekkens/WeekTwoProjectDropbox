//
//  FeedScrollViewController.swift
//  WeekTwoProjectDropbox
//
//  Created by Prisca Ekkens on 9/28/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class FeedScrollViewController: UIViewController {

    
    
    
    @IBOutlet weak var feedScrollView: UIScrollView!
    @IBOutlet weak var feedView: UIImageView!
    

    override func viewDidLoad() {
        
//        feedScrollView.NavigationItem.SetLeftBarButtonItem (new UIBarButtonItem(
//            UIImage.FromFile("profile.png"), UIBarButtonItemStyle.Plain, (sender, args) => {
//                NavigationController.PopViewControllerAnimated(true);
//            }), true);
        
        super.viewDidLoad()

    feedScrollView.contentSize = CGSizeMake(320, feedView.image!.size.height)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
