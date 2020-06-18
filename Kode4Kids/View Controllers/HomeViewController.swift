//
//  HomeViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 19/05/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func pTapped(_ sender: Any) {
        
        let profileViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.profileViewController) as? ProfileViewController
        
        self.view.window?.rootViewController = profileViewController
        self.view.window?.makeKeyAndVisible()

    }
    
    
    @IBAction func sTapped(_ sender: Any) {
        
        let subjectsViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.subjectsViewController) as? SubjectsViewController
        
        self.view.window?.rootViewController = subjectsViewController
        self.view.window?.makeKeyAndVisible()

    }
    
    
    @IBAction func nTapped(_ sender: Any) {
        
        let notesViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.notesViewController) as? NotesViewController
        
        self.view.window?.rootViewController = notesViewController
        self.view.window?.makeKeyAndVisible()

    }
    
    @IBAction func fTapped(_ sender: Any) {
        
        let forumViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.forumViewController) as? ForumViewController
        
        self.view.window?.rootViewController = forumViewController
        self.view.window?.makeKeyAndVisible()

    }
    
    
    @IBAction func aTapped(_ sender: Any) {
        
        let aboutusViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.aboutusViewController) as? AboutUsViewController
        
        self.view.window?.rootViewController = aboutusViewController
        self.view.window?.makeKeyAndVisible()

    }
    
        
    @IBAction func neTapped(_ sender: Any) {
        
        let newsViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.newsViewController) as? NewsViewController
        
        self.view.window?.rootViewController = newsViewController
        self.view.window?.makeKeyAndVisible()

    }
    
    @IBAction func seTapped(_ sender: Any) {
        
        let settingsViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.settingsViewController) as? SettingsViewController
        
        self.view.window?.rootViewController = settingsViewController
        self.view.window?.makeKeyAndVisible()

    }
    
    @IBAction func lTapped(_ sender: Any) {
        
        let loginViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.loginViewController) as? LoginViewController
        
        self.view.window?.rootViewController = loginViewController
        self.view.window?.makeKeyAndVisible()

    }
    
    @IBOutlet weak var leading: NSLayoutConstraint!
    
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var menuOut = false
    
    @IBAction func menuTapped(_ sender: Any) {
        
        if menuOut == false {
            
            leading.constant = 150
            trailing.constant = -150
            
            menuOut = true
            
        } else {
                leading.constant = 0
                trailing.constant = 0
                
                menuOut = false
            
        }
        
        UIView.animate(withDuration:0.2, delay:0.0, options:.curveEaseIn,animations: {self.view.layoutIfNeeded()
            
        }) { (animationComplete)
            in print("The animation is complete") }
            
        }
        
}
    

