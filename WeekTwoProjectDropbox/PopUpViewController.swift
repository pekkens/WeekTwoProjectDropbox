//
//  PopUpViewController.swift
//  WeekTwoProjectDropbox
//
//  Created by Prisca Ekkens on 9/28/15.
//  Copyright © 2015 Prisca Ekkens. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    let signingInPopUp = UILabel()
        
    signingInPopUp.text = "Signing In..."
    signingInPopUp.textAlignment = .Center
    signingInPopUp.textColor = UIColor.blackColor()
    signingInPopUp.font = UIFont(name: signingInPopUp.font.fontName, size: 18)
    signingInPopUp.frame = CGRect(x: 90, y: 300, width: 200, height: 50)
    signingInPopUp.layer.cornerRadius = 20
    signingInPopUp.addSubview(signingInPopUp)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
