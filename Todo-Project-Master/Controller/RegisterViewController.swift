//
//  RegisterViewController.swift
//  Todo-Project-Master
//
//  Created by Charlie Dill on 10/17/18.
//  Copyright © 2018 dill. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func registerPressed(_ sender: AnyObject){
        
        //TODo: Set up a new user on our firebase database
        
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) {
            (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                //success
                print("Registration Successful!")
                
                self.performSegue(withIdentifier: "goToTodo", sender: self)
            }
        }
        
    }
}
