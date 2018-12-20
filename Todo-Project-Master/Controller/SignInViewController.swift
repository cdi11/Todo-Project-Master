//
//  SignInViewController.swift
//  Todo-Project-Master
//
//  Created by Charlie Dill on 12/18/18.
//  Copyright © 2018 dill. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {
    
    
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func signInPressed(_ sender:AnyObject) {
        // TODO: Log in the user
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) {
            (user,error) in
            if error != nil {
                print(error!)
            } else {
                print("Signed in")
                self.performSegue(withIdentifier: "goToTodoS", sender: self)
            }
        }
    }
}

