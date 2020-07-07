//
//  LoginViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 19/05/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

//imports for dependencies
import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    //outlets set up from storyboard
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var RegisterPage: UILabel!
    @IBOutlet weak var ForgotPassword: UIButton!
    @IBOutlet weak var ErrorLabel: UILabel!
    
    //function that runs as the page loads successfully,
    override func viewDidLoad() {
        super.viewDidLoad()

        //function called to style elements on the page from external file
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
    
    //function linked to the 'login' button
    @IBAction func LoginTapped(_ sender: Any) {
        
        //validate all fields, making sure they're not blank
        let EmailField = Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let PasswordField = Password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        //check if user is valid within the authentication section of FirebaseDB
        Auth.auth().signIn(withEmail: EmailField, password: PasswordField) { (result, error) in
            
            //if an error is present
            if error != nil {
                //couldn't sign in, show error
                self.ErrorLabel.text = error!.localizedDescription
                self.ErrorLabel.alpha = 1
            }
            else {
                
                //if login is successful, reroute to Home page
                let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
    }
}
