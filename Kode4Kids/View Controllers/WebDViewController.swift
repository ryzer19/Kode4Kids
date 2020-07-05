//
//  WebDViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 03/07/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class WebDViewController: UIViewController {

    @IBAction func oiTapped(_ sender: Any) {
        let oneViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.oneViewController) as? OneViewController
        
        self.view.window?.rootViewController = oneViewController
        self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func wsTapped(_ sender: Any) {
        let twoViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twoViewController) as? TwoViewController
               
               self.view.window?.rootViewController = twoViewController
               self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func hxTapped(_ sender: Any) {
        let threeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.threeViewController) as? ThreeViewController
               
               self.view.window?.rootViewController = threeViewController
               self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func sTapped(_ sender: Any) {
        let fourViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fourViewController) as? FourViewController
               
               self.view.window?.rootViewController = fourViewController
               self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func lsTapped(_ sender: Any) {
        let fiveViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fiveViewController) as? FiveViewController
               
               self.view.window?.rootViewController = fiveViewController
               self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func opTapped(_ sender: Any) {
        let sixViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.sixViewController) as? SixViewController
               
               self.view.window?.rootViewController = sixViewController
               self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func dTapped(_ sender: Any) {
        let sevenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.sevenViewController) as? SevenViewController
               
               self.view.window?.rootViewController = sevenViewController
               self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func atTapped(_ sender: Any) {
        let eightViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.eightViewController) as? EightViewController
               
               self.view.window?.rootViewController = eightViewController
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
