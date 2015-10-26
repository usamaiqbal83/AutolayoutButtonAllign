//
//  CustomCell.swift
//  testingProject
//
//  Created by mac new on 10/9/15.
//  Copyright © 2015 mac new. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var emailButtonWidthConstraint : NSLayoutConstraint?
    @IBOutlet weak var phoneButtonWidthConstraint : NSLayoutConstraint?
    @IBOutlet weak var skypeButtonWidthConstraint : NSLayoutConstraint?

    func showButtons(showSkype showSkype : Bool, showEmail : Bool, showPhone : Bool ){
        emailButtonWidthConstraint?.constant = showEmail ? 54.0 : 0.0
        phoneButtonWidthConstraint?.constant = showPhone ? 54.0 : 0.0
        skypeButtonWidthConstraint?.constant = showSkype ? 54.0 : 0.0
        
        self.layoutIfNeeded()
    }
    
    @IBAction func skypeButtonTapped(sender : UIButton){
        print("skype")
    }
    
    @IBAction func emailButtonTapped(sender : UIButton) {
        print("email")
    }
    
    @IBAction func phoneButtonTapped(sender : UIButton) {
        print("phone")
    }
}
