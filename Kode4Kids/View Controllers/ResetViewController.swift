//
//  ResetViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 09/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

var showAlert = false
var errString: String?


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

    
    @IBAction func ResetTapped(_ sender: Any) {
        let auth = Auth.auth()
        auth.sendPasswordReset(withEmail: Email.text!) { (error) in
            if let error = error {
                let alert = Service.createAlertController(title: "Error", message: error.localizedDescription)
                self.present(alert, animated: true, completion: nil)
                return
            }
            
            let alert = Service.createAlertController(title: "Success", message: "An email has been sent to reset your password")
            self.present(alert, animated: true, completion: nil)
    }
}
    
}


