//
//  WebDevViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 03/07/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class WebDevViewController: UIViewController {

    @IBAction func wiwdTapped(_ sender: Any) {
        
        let seventeenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.seventeenViewController) as? SeventeenViewController
        
        self.view.window?.rootViewController = seventeenViewController
        self.view.window?.makeKeyAndVisible()
    }
    @IBAction func sfTapped(_ sender: Any) {
        let eighteenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.eighteenViewController) as? EighteenViewController
        
        self.view.window?.rootViewController = eighteenViewController
        self.view.window?.makeKeyAndVisible()
    }
    @IBAction func domTapped(_ sender: Any) {
        
        let nineteenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.nineViewController) as? NineteenViewController
        
        self.view.window?.rootViewController = nineteenViewController
        self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func cssTapped(_ sender: Any) {
        let twentyViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twentyViewController) as? TwentyViewController
        
        self.view.window?.rootViewController = twentyViewController
        self.view.window?.makeKeyAndVisible()
    }
    @IBAction func mulTapped(_ sender: Any) {
        let twentyoneViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twentyoneViewController) as? TwentyoneViewController
        
        self.view.window?.rootViewController = twentyoneViewController
        self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func framTapped(_ sender: Any) {
        
        let twentytwoViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twentytwoViewController) as? TwentytwoViewController
        
        self.view.window?.rootViewController = twentytwoViewController
        self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func secTapped(_ sender: Any) {
        
        let twentythreeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twentythreeViewController) as? TwentythreeViewController
        
        self.view.window?.rootViewController = twentythreeViewController
        self.view.window?.makeKeyAndVisible()
    }
    @IBAction func atTapped(_ sender: Any) {
        
        let twentyfourViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twentyfourViewController) as? TwentyfourViewController
        
        self.view.window?.rootViewController = twentyfourViewController
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
