//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Arina on 06.11.2022.
//

import UIKit

class WelcomeViewController: UITabBarController {

    @IBOutlet var usernameLabel: UILabel!
    
  //  var username: String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // usernameLabel.text = username
    }
    
    @IBAction func logoutButton() {
        dismiss(animated: true)
    }
}
