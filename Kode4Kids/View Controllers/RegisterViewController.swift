//
//  RegisterViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 19/05/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var fullName: UITextField!
    
    
    @IBOutlet weak var Email:
        UITextField!
    
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var PhoneNo: UITextField!
    
    
    @IBOutlet weak var DateOfBirth: UITextField!
    
    @IBOutlet weak var City:
        UITextField!
    
    
    @IBOutlet weak var RegisterButton: UIButton!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    
    @IBOutlet weak var LoginPageLabel: UILabel!
    
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

    @IBAction func RegisterTapped(_ sender: Any) {
    }
}
