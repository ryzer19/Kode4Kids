//
//  LoginViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 19/05/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    @IBOutlet weak var RegisterPage: UILabel!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        setUpElements()
        
    }
    
    func setUpElements(){
        //makes error label invisible
        ErrorLabel.alpha = 0
        
        //styles elements
        Utilities.styleTextField(Email)
        Utilities.styleTextField(Password)
        Utilities.styleFilledButton(LoginButton)
    }

    @IBAction func LoginTapped(_ sender: Any) {
        
        //validate all fields
        
        //
        let EmailField = Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let PasswordField = Password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        //sign user in
        Auth.auth().signIn(withEmail: EmailField, password: PasswordField) { (result, error) in
            
            if error != nil {
                //couldn't sign in
                self.ErrorLabel.text = error!.localizedDescription
                self.ErrorLabel.alpha = 1
            }
            else {

                let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
    }
}
