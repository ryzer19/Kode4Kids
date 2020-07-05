//
//  ProgrammingViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 03/07/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class ProgrammingViewController: UIViewController {

    @IBAction func witiTapped(_ sender: Any) {
       
        let nineViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.nineViewController) as? NineViewController
                      
                      self.view.window?.rootViewController = nineViewController
                      self.view.window?.makeKeyAndVisible()
        
    }
    @IBAction func plTapped(_ sender: Any) {
        let tenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.tenViewController) as? TenViewController
               
               self.view.window?.rootViewController = tenViewController
               self.view.window?.makeKeyAndVisible()
    
    }
    
    @IBAction func pyTapped(_ sender: Any) {
        let elevenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.elevenViewController) as? ElevenViewController
               
               self.view.window?.rootViewController = elevenViewController
               self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func jTapped(_ sender: Any) {
        let twelveViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.twelveViewController) as? TwelveViewController
               
               self.view.window?.rootViewController = twelveViewController
               self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func netTapped(_ sender: Any) {
        let thirteenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.thirteenViewController) as? ThirteenViewController
               
               self.view.window?.rootViewController = thirteenViewController
               self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func jsTapped(_ sender: Any) {
        
        let fourteenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fourteenViewController) as? FourteenViewController
               
               self.view.window?.rootViewController = fourteenViewController
               self.view.window?.makeKeyAndVisible()
    }
    @IBAction func peTapped(_ sender: Any) {
        let fifteenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fifteenViewController) as? FifteenViewController
               
               self.view.window?.rootViewController = fifteenViewController
               self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func ccTapped(_ sender: Any) {
       let sixteenViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.sixteenViewController) as? SixteenViewController
                     
                     self.view.window?.rootViewController = sixteenViewController
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
