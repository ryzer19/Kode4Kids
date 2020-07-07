//
//  NotesViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 17/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {
    
    //outlet button on storyboard
    @IBOutlet weak var notesButton: UIButton!
    
    //first function to run
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        
        //displays title on top of page
        title = "Notes"
    }
        //when the notes button is tapped, the notes iPhone app is loaded on the device
    @IBAction func notesTapped(_ sender: Any) {
        if let url = URL(string: "mobilenotes://"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            
            //if notes isn't installed, open the notes install page on the web
        } else if let appURL = URL(string: "https://apps.apple.com/ie/app/notes/id1110145109"), UIApplication.shared.canOpenURL(appURL) {
            UIApplication.shared.open(appURL, options: [:], completionHandler: nil)
        }
    }
    
    //function to style page elements
    func setUpElements(){
            //links to utilities file containing styles
            Utilities.styleFilledButton(notesButton)
    }
        

        //back button on navbar to bring user back to previous page
    @IBAction func backTapped(_ sender: Any) {
       
        let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        self.view.window?.rootViewController = homeViewController
        self.view.window?.makeKeyAndVisible()
        
    }
    
}

