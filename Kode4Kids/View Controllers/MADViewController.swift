//
//  MADViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 03/07/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class MADViewController: UIViewController {

    @IBAction func wimadTapped(_ sender: Any) {
        let fortynineViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fortynineViewController) as? FortynineViewController
                            
                            self.view.window?.rootViewController = fortynineViewController
                            self.view.window?.makeKeyAndVisible()

    }
    
    @IBAction func plTapped(_ sender: Any) {
        let fiftyViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fiftyViewController) as? FiftyViewController
                            
                            self.view.window?.rootViewController = fiftyViewController
                            self.view.window?.makeKeyAndVisible()
    }
    
    @IBAction func langTapped(_ sender: Any) {
        let fiftyoneViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fiftyoneViewController) as? FiftyoneViewController
                            
                            self.view.window?.rootViewController = fiftyoneViewController
                            self.view.window?.makeKeyAndVisible()
    }
    @IBAction func guiTapped(_ sender: Any) {
        let fiftytwoViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fiftytwoViewController) as? FiftytwoViewController
                            
                            self.view.window?.rootViewController = fiftytwoViewController
                            self.view.window?.makeKeyAndVisible()
    }
    @IBAction func prTapped(_ sender: Any) {
        let fiftythreeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fiftythreeViewController) as? FiftythreeViewController
                            
                            self.view.window?.rootViewController = fiftythreeViewController
                            self.view.window?.makeKeyAndVisible()
    }
    @IBAction func fedTapped(_ sender: Any) {
        let fiftyfourViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fiftyfourViewController) as? FiftyfourViewController
                            
                            self.view.window?.rootViewController = fiftyfourViewController
                            self.view.window?.makeKeyAndVisible()
    }
    @IBAction func bedTapped(_ sender: Any) {
        
        let fiftyfiveViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fiftyfiveViewController) as? FiftyfiveViewController
                            
                            self.view.window?.rootViewController = fiftyfiveViewController
                            self.view.window?.makeKeyAndVisible()
    }
    @IBAction func trTapped(_ sender: Any) {
        
        let fiftysixViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.fiftysixViewController) as? FiftysixViewController
                            
                            self.view.window?.rootViewController = fiftysixViewController
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
