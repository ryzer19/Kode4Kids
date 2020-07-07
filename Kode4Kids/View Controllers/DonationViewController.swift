//
//  DonationViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 07/07/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class DonationViewController: UIViewController {

    @IBAction func donTapped(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.paypal.com/ie/signin")! as URL, options: [:], completionHandler: nil)
        
      
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
