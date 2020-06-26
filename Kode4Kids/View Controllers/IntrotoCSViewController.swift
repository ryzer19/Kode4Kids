//
//  IntrotoCSViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 26/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class IntrotoCSViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backTapped(_ sender: Any) {
        
        let subjectsViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.subjectsViewController) as? SubjectsViewController
                              
                              self.view.window?.rootViewController = subjectsViewController
                              self.view.window?.makeKeyAndVisible()
        
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
