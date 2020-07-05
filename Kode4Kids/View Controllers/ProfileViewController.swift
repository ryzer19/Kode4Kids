//
//  ProfileViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 17/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage
import FirebaseDatabase


class ProfileViewController: UIViewController {
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var variableLabel: UILabel!
    
    var db: Firestore!
    
    //declaring image variable to be optional
    var image: UIImage? = nil
    
    let email : String = (Auth.auth().currentUser?.email)!

    override func viewDidLoad() {
        super.viewDidLoad()
            setUpAvatar()
        variableLabel.text = email
        // Do any additional setup after loading the view.
    }
        
    //styling for the imageview avatar
    func setUpAvatar(){
        avatar.layer.cornerRadius = 40
        avatar.clipsToBounds = true
        avatar.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(presentPicker))
        avatar.addGestureRecognizer(tapGesture)
    }
    //objective c function to present image picker to user
   @objc func presentPicker(){
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        self.present(picker, animated: true, completion: nil)
    }
    
        //back button on nav bar tapped brings user back a step
    @IBAction func backTapped(_ sender: Any) {
    
    let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                       
                       self.view.window?.rootViewController = homeViewController
                       self.view.window?.makeKeyAndVisible()
        

    }
    
}



    //extension to allow the image picker function
extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
       
        //updates with new image
        if let imageSelected = info[UIImagePickerController.InfoKey.editedImage] as?
            UIImage {
            image = imageSelected
            avatar.image = imageSelected
        }
        
        //sets as original image
        if let imageOriginal = info[UIImagePickerController.InfoKey.originalImage] as?
            UIImage {
            image = imageOriginal
            avatar.image = imageOriginal
        }
                
        //dismiss picker after choosing photo
        picker.dismiss(animated: true, completion: nil)
}
    
    @IBAction func imageSaved(_ sender: Any){
        guard let imageSelected = self.image else {
            print("Avatar is nil")
            return
        }
        
        guard let imageData = imageSelected.jpegData(compressionQuality: 0.4) else {
            return
        }        

        let storageRef = Storage.storage().reference(forURL: "gs://kode4kids-b877c.appspot.com/")
        let databaseRef = Database.database().reference()
        
        
    }
    
}
