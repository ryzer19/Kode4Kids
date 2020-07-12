//
//  ForumViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 17/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class ForumViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var tableView: UITableView!
    



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //what the frame for each post should look like
        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.backgroundColor = UIColor.white
        let cellNib = UINib(nibName: "ForumViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "ForumCell")
        view.addSubview(tableView)
        
        var layoutGuide:UILayoutGuide!
        
        if #available(iOS 11.0, *){
        layoutGuide = view.safeAreaLayoutGuide
        } else {
            //fallback on previous versions
            layoutGuide = view.layoutMarginsGuide
        }
        tableView.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: layoutGuide.topAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor).isActive = true
        //these are thee constraints for eacj side of the ForumViewCell
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //how many ForumViewCells will display on the page at each time
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.dequeueReusableCell(withIdentifier: "ForumCell", for: indexPath) //
    }
    //back button (doesnt work)
    @IBAction func backTapped(_ sender: Any) {
    
     let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
     
     self.view.window?.rootViewController = homeViewController
     self.view.window?.makeKeyAndVisible()

}
}
