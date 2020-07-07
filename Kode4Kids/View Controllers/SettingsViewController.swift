//
//  SettingsViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 17/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

//imports, allowing user notification
import UIKit
import UserNotifications

class SettingsViewController: UIViewController {

    //outlets from storyboard
    @IBOutlet weak var Appearance: UISegmentedControl!
    @IBOutlet weak var Settings: UIButton!

    
    //function first to run when page loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
            //importing notification center function
        let center = UNUserNotificationCenter.current()
        
        //function to request authorization to approve of notifs
        center.requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in

        }
        
    //notification content which is shown
    let content = UNMutableNotificationContent()
    content.title = "Thanks for joining!"
    content.body = "Come back soon"
    content.badge = 1
        
        
    //trigger set to 5 seconds after page load
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
    
    //notification request
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        //register the request
        center.add(request) { (error) in
            //check for errors
        }
        
        
    }
    
    //when settings button tapped,bring user to iPhone settings of that app
    @IBAction func settingsTapped(_ sender: Any) {
        if let settingUrl = URL(string:UIApplication.openSettingsURLString) {

            UIApplication.shared.open(settingUrl)
        }
        else {
            print("Setting URL invalid")
        }
}
        
    //when back button is tapped, go to home page
    @IBAction func backTapped(_ sender: Any) {
       
        let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        self.view.window?.rootViewController = homeViewController
        self.view.window?.makeKeyAndVisible()
        
    }
    
    //function to allow appearance to be changed
    @IBAction func Appearance(_ sender: Any) {
        switch Appearance.selectedSegmentIndex{
        case 0:
            overrideUserInterfaceStyle = .light
        case 1:
            overrideUserInterfaceStyle = .dark
        case 2:
            overrideUserInterfaceStyle = .unspecified
        default:
            overrideUserInterfaceStyle = .unspecified
        }
    }
    
}
