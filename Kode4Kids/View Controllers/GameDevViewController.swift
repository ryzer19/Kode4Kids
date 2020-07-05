//
//  GameDevViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 03/07/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class GameDevViewController: UIViewController {
    
    
    @IBAction func wigdTapped(_ sender: Any) {
        let fortyoneViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fortyoneViewController) as? FortyoneViewController
                                          
                                          self.view.window?.rootViewController = fortyoneViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func dtapped(_ sender: Any) {
        let fortytwoViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fortytwoViewController) as? FortytwoViewController
                                          
                                          self.view.window?.rootViewController = fortytwoViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func plTapped(_ sender: Any) {
        let fortythreeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fortythreeViewController) as? FortythreeViewController
                                          
                                          self.view.window?.rootViewController = fortythreeViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func prTapped(_ sender: Any) {
        let fortyfourViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fortyfourViewController) as? FortyfourViewController
                                          
                                          self.view.window?.rootViewController = fortyfourViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func dpTapped(_ sender: Any) {
        let fortyfiveViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fortyfiveViewController) as? FortyfiveViewController
                                          
                                          self.view.window?.rootViewController = fortyfiveViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func daTapped(_ sender: Any) {
        let fortysixViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fortysixViewController) as? FortysixViewController
                                          
                                          self.view.window?.rootViewController = fortysixViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    @IBAction func proTapped(_ sender: Any) {
        let fortysevenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fortysevenViewController) as? FortysevenViewController
                                          
                                          self.view.window?.rootViewController = fortysevenViewController
                                          self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func ftTapped(_ sender: Any) {
        let fortyeightViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fortyeightViewController) as? FortyeightViewController
                                          
                                          self.view.window?.rootViewController = fortyeightViewController
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
