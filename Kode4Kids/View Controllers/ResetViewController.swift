//
//  ResetViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 09/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

//imports
import UIKit
import Firebase
import FirebaseAuth

//variables
var showAlert = false
var errString: String?


class ResetViewController: UIViewController {

    //outlets from storyboard
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var ResetButton: UIButton!
    
    //first function to run when page loads successfully
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //calls function to style elements on the page
        setUpElements()
    }
    
    //function to style page
    func setUpElements(){
            //styles elements
            Utilities.styleTextField(Email)
            Utilities.styleTextField(Email)
            Utilities.styleFilledButton(ResetButton)
    }

    //function linked to 'reset' button
    @IBAction func ResetTapped(_ sender: Any) {
        let auth = Auth.auth()
        
        //send email to the inputted email
        auth.sendPasswordReset(withEmail: Email.text!) { (error) in
            
            //if there's an error show error message
            if let error = error {
                let alert = Service.createAlertController(title: "Error", message: error.localizedDescription)
                
                //show an alert box containing the error
                self.present(alert, animated: true, completion: nil)
                return
            }
            
            //display alert box to show success message
            let alert = Service.createAlertController(title: "Success", message: "An email has been sent to reset your password")
            self.present(alert, animated: true, completion: nil)
    }
}
    
}


