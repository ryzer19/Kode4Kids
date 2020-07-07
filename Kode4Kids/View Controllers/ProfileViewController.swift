//
//  ProfileViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 17/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

//imports
import UIKit
import Firebase
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage
import FirebaseDatabase


class ProfileViewController: UIViewController {
    
    //inputs from main.storyboard
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var variableLabel: UILabel!
    @IBOutlet weak var todayTask: UITextField!
        
    //declaring image variable to be optional
    var image: UIImage? = nil
    
    //getting current logged in users email
    let email : String = (Auth.auth().currentUser?.email)!
    
    //user defaults to save default data
    let defaults = UserDefaults.standard
    
    //structured variables declared
    struct Keys {
        static let todaysTask = "todaysTask"
    }

    //first function ran when the page loads successfully
    override func viewDidLoad() {
        super.viewDidLoad()
        
            //callingt functions
            setUpAvatar()
            checkForTask()
        
        //set variableLabel as current users email
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
    
    //check if a user has previously entered their daily tasks
    func checkForTask(){
        let today = defaults.value(forKey: Keys.todaysTask) as? String ?? ""
        todayTask.text = today
    }
    
    //button to save new daily task
    @IBAction func saveToday(_ sender: Any) {
        saveTask()
    }
    
    //function to save new daily task from text field
    func saveTask(){
        defaults.set(todayTask.text!, forKey: Keys.todaysTask)
    }
    
    @IBAction func logoutTapped(_ sender: Any) {
        
        let loginViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.loginViewController) as? LoginViewController
        
        self.view.window?.rootViewController = loginViewController
        self.view.window?.makeKeyAndVisible()

    }

}


    //extension to allow the image picker function
extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
       
        //updates image view with new image
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
    
    //button to save image to DB
    @IBAction func imageSaved(_ sender: Any){
        guard let imageSelected = self.image else {
            print("Avatar is nil")
            return
        }
                
        //sets data type & quality for the saved image
        guard let imageData = imageSelected.jpegData(compressionQuality: 0.4) else {
            return
        }
        
        //variables to access DB references
        let storageRef = Storage.storage().reference(forURL: "gs://kode4kids-b877c.appspot.com/")
        let storageProfileRef = storageRef.child("profile").child(Auth.auth().currentUser!.uid)
        
        //metadata displayed on database within the image
        let metadata = StorageMetadata()
        metadata.contentType = "image/jpeg"
        storageProfileRef.putData(imageData, metadata: metadata, completion: { (StorageMetadata, error) in
        if error != nil {
            print(error?.localizedDescription as Any)
            return
        }
    })
            
    
}
    
    
        
}


