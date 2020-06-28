//
//  NotesViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 17/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {
    
    
    @IBOutlet weak var notesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notes"
    }
        //when the notes button is tapped, the notes page is loaded on the device
    @IBAction func notesTapped(_ sender: Any) {
        if let url = URL(string: "mobilenotes://"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else if let appURL = URL(string: "https://apps.apple.com/us/app/testflight/id899247664"), UIApplication.shared.canOpenURL(appURL) {
            UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
        }
    }
        

        
    @IBAction func backTapped(_ sender: Any) {
       
        let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        self.view.window?.rootViewController = homeViewController
        self.view.window?.makeKeyAndVisible()
        
    }
    
}

