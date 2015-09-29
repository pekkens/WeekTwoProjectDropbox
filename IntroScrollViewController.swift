//
//  IntroScrollViewController.swift
//  WeekTwoProjectDropbox
//
//  Created by Prisca Ekkens on 9/27/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class IntroScrollViewController: UIViewController {
    
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
        
        //Configure the content size manually
        introScroll.contentSize = CGSize (width: 320, height: 1825)
        
        // Configure the content size automatically
        //introScroll.contentSize = CGSizeMake(320, introContent.image!.size.height)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func createBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("CreateVeiwControllerSegue", sender: nil)
    }

    @IBAction func signInBtnPressed(sender: AnyObject) {
        performSegueWithIdentifier("SignInVeiwControllerSegue", sender: nil)
    }


}
