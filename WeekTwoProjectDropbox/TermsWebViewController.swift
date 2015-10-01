//
//  TermsWebViewController.swift
//  WeekTwoProjectDropbox
//
//  Created by Prisca Ekkens on 9/28/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class TermsWebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            let url = NSURL(string: "https://www.dropbox.com/terms?mobile=1")
            let request = NSURLRequest(URL: url!)
            webView.loadRequest(request)
        }

        // Do any additional setup after loading the view.
    }

