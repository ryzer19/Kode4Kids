//
//  ResetViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 09/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit
import Firebase

class ResetViewController: UIViewController {

    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var ResetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
        // Do any additional setup after loading the view.
    }
    
    func setUpElements(){
            
            //styles elements
            Utilities.styleTextField(Email)
            Utilities.styleTextField(Email)
            Utilities.styleFilledButton(ResetButton)
        }
    }
    

