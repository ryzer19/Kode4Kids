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
                
                if Utilities.isPasswordValid(securePassword) == false {                 //password isn't secure enough
                    return "Please make sure your password is: atleast 8 characters & a number."
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
        else{
            
        }
        //create user & add to db
        
        //move to login page
        
    }
    
    func showError(_ message:String){
        ErrorLabel.text = message
        ErrorLabel.alpha = 1
    }
    
}
