//
//  ResetViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 26/05/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit
import Firebase

let EmailResetEmpty = "Please enter an email!"

class ResetViewController: UIViewController {
    
    
    @IBOutlet weak var ResetEmail: UITextField!
    
    
    @IBOutlet weak var ResetButton: UIButton!
    
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            setUpElements()
        // Do any additional setup after loading the view.
    }
    func setUpElements(){
        //makes error label invisible
        ErrorLabel.alpha = 0
        
        //styles elements
        Utilities.styleTextField(ResetEmail)
        Utilities.styleFilledButton(ResetButton)
    }
    
    
    @IBAction func resetPasswordTapped(_ sender: Any) {
        }
    }

