//
//  ViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 17/05/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var RegisterButton: UIButton!
    
    
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        
        Utilities.styleFilledButton(RegisterButton)
        
        Utilities.styleFilledButton(LoginButton)
    }


}

