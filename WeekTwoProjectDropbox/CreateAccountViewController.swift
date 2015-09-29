//
//  CreateAccountViewController.swift
//  WeekTwoProjectDropbox
//
//  Created by Prisca Ekkens on 9/28/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var userInfoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name:UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name:UIKeyboardWillHideNotification, object: nil)


    }
    
// MARK: Actions
    
    @IBAction func checkboxBtnPressed(sender: UIButton!) {
        
        sender.enabled = false
        
    }
    
// MARK: Actions

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func keyboardWillShow(sender: NSNotification) {
            
            if userInfoView.frame.origin.y == 100 {

                self.userInfoView.frame.origin.y += 100
    
            }
        }
        
    func keyboardWillHide(sender: NSNotification) {
            self.userInfoView.frame.origin.y -= 100

        }

    }

