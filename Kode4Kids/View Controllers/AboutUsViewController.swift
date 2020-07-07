//
//  AboutUsViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 17/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    //first function to run
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

   
  
        //back button on top of page in navbar to bring user back a page
    @IBAction func backTapped(_ sender: Any) {
    
    let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                       
                       self.view.window?.rootViewController = homeViewController
                       self.view.window?.makeKeyAndVisible()
        
    
    }

}
