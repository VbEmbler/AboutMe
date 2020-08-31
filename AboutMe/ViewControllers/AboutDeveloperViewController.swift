//
//  AboutUserViewController.swift
//  AboutMe
//
//  Created by Vladimir on 30/08/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import UIKit

class AboutDeveloperViewController: UIViewController {

    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var developerFIOLabel: UILabel!
    @IBOutlet weak var developerPhotoImage: UIImageView!
    @IBOutlet weak var developerInfoLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let parentTab = self.tabBarController?.viewControllers?.first as! UserInfoWelcomePageViewController
        navigationBar.title = parentTab.userName
        let aboutDeveloper = Developer.getGeneralInformation()
        
        developerFIOLabel.text = aboutDeveloper.name
        developerPhotoImage.image = UIImage(named: aboutDeveloper.photo)
        developerInfoLabel.text = aboutDeveloper.about
    }
}
