//
//  LoginViewController.swift
//  
//
//  Created by John Hong on 2021-11-26.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //TODO: Link signin
    @IBAction func onSignIn(_ sender: Any) {
        print("sign in clicked")
//      validate username
        guard let email = emailField.text, !email.isEmpty, let password = passwordField.text, !password.isEmpty else {
            print("error, missing field data")
            return
        }
        // Get auth instance
        
        // attempt sign in
        
        // if failure, present alert to create account
        
        // if user continues, create account
                
        // check sign in on app launch
        // allow user to sign out with button
        
        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password,  completion: {result, error in guard error == nil else {
//           TODO: show message that account doesnt exist
            print("account doesn't exist")
            return
        }})
        print("You have signed in");
        
        
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        print("sign up clicked")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
