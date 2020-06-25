//
//  EntryViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 23/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    @IBOutlet var titleField: UITextField!
    @IBOutlet var noteField: UITextView!
    
    public var completion: ((String, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTapped))
    }
  
    @IBAction func saveTapped(_ sender: Any) {
   
    if let text = titleField.text, !text.isEmpty, !noteField.text.isEmpty{
            completion?(text, noteField.text)
        }
    }
    
    @IBAction func backTapped(_ sender: Any) {
        
        let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        self.view.window?.rootViewController = homeViewController
        self.view.window?.makeKeyAndVisible()
    }
        
    }


