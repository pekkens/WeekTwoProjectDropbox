//
//  FeedScrollViewController.swift
//  WeekTwoProjectDropbox
//
//  Created by Prisca Ekkens on 9/28/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class FeedScrollViewController: UIViewController, UIScrollViewDelegate {

    


    //MARK: Outlets
    @IBOutlet weak var feedScrollView: UIScrollView!
    @IBOutlet weak var feedView: UIImageView!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        feedScrollView.contentSize = CGSizeMake(320, feedView.image!.size.height)
        feedScrollView.delegate = self
    }
    
    @IBAction func profileSettingsBtnPressed(sender: AnyObject){
        performSegueWithIdentifier("profileSettingsSegue", sender: nil)
    }

    @IBAction func converasation(sender: AnyObject) {
        performSegueWithIdentifier("conversationSegue", sender: nil)
    }
    
}
