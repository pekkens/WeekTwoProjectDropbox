//
//  SettingsViewController.swift
//  WeekTwoProjectDropbox
//
//  Created by Prisca Ekkens on 10/1/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var dimissBtn: UIButton!
    
    // MARK: Outlets
    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingsView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScrollView.contentSize = CGSizeMake(320, settingsView.image!.size.height)
        settingsScrollView.delegate = self
    }
    
    
    @IBAction func dismissedBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}