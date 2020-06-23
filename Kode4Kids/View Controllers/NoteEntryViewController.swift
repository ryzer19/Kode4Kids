//
//  NoteEntryViewController.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 22/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class NoteEntryViewController: UIViewController {

    @IBOutlet var titleField: UITextField!
    @IBOutlet var noteField: UITextView!
    
    public var completion: ((String, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTapped))
    }
    
    @objc func saveTapped(){
        if let text = titleField.text, !text.isEmpty, !noteField.text.isEmpty{
        completion?(text, noteField.text)
    }
        
}
    
@IBAction func backTapped(_ sender: Any) {
        
    let notesViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.notesViewController) as? NotesViewController
        
    self.view.window?.rootViewController = notesViewController
    self.view.window?.makeKeyAndVisible()
    }

}
