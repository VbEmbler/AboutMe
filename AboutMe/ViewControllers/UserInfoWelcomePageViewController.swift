//
//  UserInfoWelcomePageViewController.swift
//  AboutMe
//
//  Created by Vladimir on 30/08/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import UIKit

class UserInfoWelcomePageViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text! += userName
    }
}
