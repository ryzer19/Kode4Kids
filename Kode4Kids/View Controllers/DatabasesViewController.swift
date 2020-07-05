//
//  DatabasesViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 03/07/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class DatabasesViewController: UIViewController {
    
    @IBAction func dbTapped(_ sender: Any) {
        let thirtythreeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirtythreeViewController) as? ThirtythreeViewController
                                          
                                          self.view.window?.rootViewController = thirtythreeViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func tdbTapped(_ sender: Any) {
        let thirtyfourViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirtyfourViewController) as? ThirtyfourViewController
                                          
                                          self.view.window?.rootViewController = thirtyfourViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func dblTapped(_ sender: Any) {
        let thirtyfiveViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirtyfiveViewController) as? ThirtyfiveViewController
                                          
                                          self.view.window?.rootViewController = thirtyfiveViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func dbmsTapped(_ sender: Any) {
        let thirtysixViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirtysixViewController) as? ThirtysixViewController
                                          
                                          self.view.window?.rootViewController = thirtysixViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func dTapped(_ sender: Any) {
        let thirtysevenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirtysevenViewController) as? ThirtysevenViewController
                                          
                                          self.view.window?.rootViewController = thirtysevenViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func dbpTapped(_ sender: Any) {
        let thirtyeightViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirtyeightViewController) as? ThirtyeightViewController
                                          
                                          self.view.window?.rootViewController = thirtyeightViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func coTapped(_ sender: Any) {
        let thirtynineViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirtynineViewController) as? ThirtynineViewController
                                          
                                          self.view.window?.rootViewController = thirtynineViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func impTapped(_ sender: Any) {
        let fortyViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fortyViewController) as? FortyViewController
                                          
                                          self.view.window?.rootViewController = fortyViewController
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
