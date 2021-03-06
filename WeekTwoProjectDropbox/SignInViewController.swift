//
//  SignInViewController.swift
//  WeekTwoProjectDropbox
//
//  Created by Prisca Ekkens on 9/27/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
// MARK: Outlets
    
    @IBOutlet weak var emailUserName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationController!.navigationBarHidden = false
    
        loginActivityIndicator.hidden = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
// MARK: Actions
    
    
    @IBAction func signInWIthPasswordBtnPressed(sender: AnyObject) {
        
        if emailUserName.text == "tim@thecodepath.com" && password.text == "password" {
            performSegueWithIdentifier("signInWithPasswordSegue", sender: nil)
            
            self.loginActivityIndicator.hidden = false
            self.loginActivityIndicator.startAnimating()
            delay(2.0, closure: { () -> () in
                self.loginActivityIndicator.hidden = true
                self.loginActivityIndicator.stopAnimating()
                
                self.performSegueWithIdentifier("signInWithPasswordSegue", sender: nil)
            })
            
        }
            
        else {
            
            let signInFailedAlert = UIAlertController(title: "Sign in Failed", message: "Incorrect email or password", preferredStyle: .Alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            signInFailedAlert.addAction(defaultAction)
            
            presentViewController(signInFailedAlert, animated: true, completion: nil)
        }
    }
}

/*presentViewController(statusAlert, animated: true, completion: nil)var signInFailedAlert = UIAlertView(title: "Sign in Failed", message: "Incorrect email or password", delegate: nil, cancelButtonTitle: "OK")

signInFailedAlert.show()*/