//
//  HomeViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 19/05/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var leading: NSLayoutConstraint!
    
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var menuOut = false
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
    
    
    @IBAction func menuTapped(_ sender: Any) {
        
        if menuOut == false {
            
            leading.constant = 150
            trailing.constant = -150
            
            menuOut = true
        } else {
            leading.constant = 0
            trailing.constant = 0
            
            menuOut = false
            
        }
        
       UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations:{ self.view.layoutIfNeeded() })
              {(animationComplete) in
                  print("The animation is complete")
                  
              
              }
    }
    
}
