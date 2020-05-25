//
//  RegisterViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 19/05/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var fullName: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var PhoneNo: UITextField!
    
    @IBOutlet weak var DateOfBirth: UITextField!
    
    @IBOutlet weak var City: UITextField!
    
    @IBOutlet weak var RegisterButton: UIButton!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    @IBOutlet weak var LoginPageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
            
    }
    
    func setUpElements(){
        //makes error label invisible
        ErrorLabel.alpha = 0
        
        //styles elements
        Utilities.styleTextField(fullName)
        Utilities.styleTextField(Email)
        Utilities.styleTextField(Password)
        Utilities.styleTextField(PhoneNo)
        Utilities.styleTextField(DateOfBirth)
        Utilities.styleTextField(City)
        Utilities.styleFilledButton(RegisterButton)
        
    }
    
    //check all fields & validate data is correctly formatted
        //if the format is not correct, ErrorLabel is displayed
    func validateFields() -> String? {
        
        //check all fields are not empty
        if fullName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            Email.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            Password.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            PhoneNo.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            DateOfBirth.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            City.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            
            return "Please fill in all fields"
    }
        //check password is secure
                let securePassword = Password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
                
                if Utilities.isPasswordValid(securePassword) == false {
                    //password isn't secure enough
                    return "Please make sure your password is at least 6 characters, contains a special character and a number."
        }
                
        
        //check email contains '@'
        return nil
        
        
    }
    
    @IBAction func RegisterTapped(_ sender: Any) {
        //validate all fields
        let error = validateFields()
        
        if error != nil{
            
            //problem with fields, show error message
            showError(error!)
        }
        else {
            
            //create validated versions of data
            let fullNameField = fullName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let EmailField = Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let PasswordField = Password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let PhoneNoField = PhoneNo.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let DateOfBirthField = DateOfBirth.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let CityField = City.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            //create user & add to db
            Auth.auth().createUser(withEmail: EmailField, password: PasswordField) { (result, err) in
                
                //check for errors
                if err != nil {
                    //error when creating the user
                    self.showError("Error creating the user")
                }
                else{
                    //user was created successfully
                    let db = Firestore.firestore()
                    
                    db.collection("users").addDocument(data: ["fullName":fullNameField,"Email":EmailField,"PhoneNo":PhoneNoField,"DateOfBirth":DateOfBirthField,"City":CityField, "userID": result!.user.uid]) { (error) in
                        
                        if error != nil {
                            //show error message
                            self.showError("Data can't be saved to DB successfully")
                        }
                    }
                    
                    //move to login page
                    self.goToLogin()
                }
            }
                        
        }
    }
    
    func showError(_ message:String){
        ErrorLabel.text = message
        ErrorLabel.alpha = 1
    }
    func goToLogin(){
       
       let loginViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.loginViewController) as? LoginViewController
        
        view.window?.rootViewController = loginViewController
        view.window?.makeKeyAndVisible()
    }
}

