//
//  CloudCViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 03/07/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class CloudCViewController: UIViewController {
    
    @IBAction func clocTapped(_ sender: Any) {
        
        let twentyfiveViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twentyfiveViewController) as? TwentyfiveViewController
                                   
                                   self.view.window?.rootViewController = twentyfiveViewController
                                   self.view.window?.makeKeyAndVisible()
    }
    @IBAction func cltTapped(_ sender: Any) {
        let twentysixViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twentysixViewController) as? TwentysixViewController
                                   
                                   self.view.window?.rootViewController = twentysixViewController
                                   self.view.window?.makeKeyAndVisible()
    }
    @IBAction func claTapped(_ sender: Any) {
        let twentysevenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twentysevenViewController) as? TwentysevenViewController
                                   
                                   self.view.window?.rootViewController = twentysevenViewController
                                   self.view.window?.makeKeyAndVisible()
    }
    @IBAction func stTapped(_ sender: Any) {
        let twentyeightViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twentyeightViewController) as? TwentyeightViewController
                                   
                                   self.view.window?.rootViewController = twentyeightViewController
                                   self.view.window?.makeKeyAndVisible()
    }
    @IBAction func seTapped(_ sender: Any) {
        let twentynineViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twentynineViewController) as? TwentynineViewController
                                   
                                   self.view.window?.rootViewController = twentynineViewController
                                   self.view.window?.makeKeyAndVisible()
    }
    @IBAction func clcTapped(_ sender: Any) {
        let thirtyViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirtyViewController) as? ThirtyViewController
                                   
                                   self.view.window?.rootViewController = thirtyViewController
                                   self.view.window?.makeKeyAndVisible()
    }
    @IBAction func dataTapped(_ sender: Any) {
        let thirtyoneViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirtyoneViewController) as? ThirtyoneViewController
                                   
                                   self.view.window?.rootViewController = thirtyoneViewController
                                   self.view.window?.makeKeyAndVisible()
    }
    @IBAction func adTapped(_ sender: Any) {
      
         let thirtytwoViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirtytwoViewController) as? ThirtytwoViewController
                                          
                                          self.view.window?.rootViewController = thirtytwoViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
