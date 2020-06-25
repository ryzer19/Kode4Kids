//
//  NotesViewController.swift
//  Kode4Kids
//
//  Created by Caleb Clegg on 17/06/2020.
//  Copyright © 2020 Group9. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet var table: UITableView!
    @IBOutlet var label: UILabel!
    @IBOutlet var NotesViewController: UIView!
    
    var models: [(title: String, note: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        title = "Notes"
    }
    
    @IBAction func newNotes(_ sender: Any) {
        
        let entryViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.entryViewController) as? EntryViewController
        
        self.view.window?.rootViewController = entryViewController
        self.view.window?.makeKeyAndVisible()
        
                
        entryViewController?.title = "New note"
        entryViewController?.navigationItem.largeTitleDisplayMode = .never
        entryViewController?.completion = { noteTitle, note in
            self.navigationController?.popViewController(animated: true)
            self.models.append((title: noteTitle, note: note))
                self.label.isHidden = true
                self.table.isHidden = false
            
                self.table.reloadData()
        }
        navigationController?.pushViewController(entryViewController!, animated: true)
        
    }
    
  
    
    //tables setup
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        cell.detailTextLabel?.text = models[indexPath.row].note
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        //show note view controller
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "note") as? NoteViewController else {
            return
        }
        
        vc.title = "Note"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
        //go back when button is tapped
        
    @IBAction func backTapped(_ sender: Any) {
       
        let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        self.view.window?.rootViewController = homeViewController
        self.view.window?.makeKeyAndVisible()
        
    }
    
        
    
    
}
