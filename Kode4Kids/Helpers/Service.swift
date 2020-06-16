//
//  Service.swift
//  Kode4Kids
//
//  Created by Ryan Johnston on 16/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class Service {
    static func createAlertController(title: String, message: String) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(okAction)
        
        return alert
    }
    
}
