//
//  BacklogViewController.swift
//  Todo-Project-Master
//
//  Created by Charlie Dill on 12/5/18.
//  Copyright © 2018 dill. All rights reserved.
//
import UIKit
import Foundation
import Firebase

class BacklogViewController: UIViewController {
   //var itemArray = [Item]()
    
    
    let context = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
    }
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Add new Todo", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction (title: "Add Item", style: .default) { (action) in
            //What will happen when the user hits button on UI alert
         print("this is added")
        }
    }
    
}

