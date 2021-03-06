//
//  SubjectsViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 17/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class SubjectsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backTapped(_ sender: Any) {
        
        let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                       
                       self.view.window?.rootViewController = homeViewController
                       self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func s1Tapped(_ sender: Any) {
       
        let introtocsViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.introtocsViewController) as? IntrotoCSViewController
        
        self.view.window?.rootViewController = introtocsViewController
        self.view.window?.makeKeyAndVisible()
        
        
        
    }
    
    
    
}
