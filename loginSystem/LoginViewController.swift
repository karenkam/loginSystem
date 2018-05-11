//
//  ViewController.swift
//  loginSystem
//
//  Created by Karen Jin on 4/18/18.
//  Copyright © 2018 DeAnza. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var usernameTextfield: UITextField!
    
    /** click this button to login and go to the home page */
    @IBAction func clickFirstToLogin(_ sender: UIButton) {
        if let email = usernameTextfield.text, let pass = passwordTextfield.text {
            
            //sign in
            Auth.auth().signIn(withEmail: email, password: pass) { (user, error) in
                // check user
                if let u = user {
                    // if not nil, go to the home page
                    self.performSegue(withIdentifier: "segueLoginToHome", sender: self)
                }
                else {
                    // show the message that the user is not found
                    self.displayErrorLogin()
                }
            }
        }
    }
    
    @IBAction func clickFirstToSignup(_ sender: UIButton) {
        performSegue(withIdentifier: "segueFirstToSignup", sender: self)
    }
    
    @IBAction func clickFirstToForget(_ sender: UIButton) {
        performSegue(withIdentifier: "segueFirstToForget", sender: self)
    }
    
    /** display the message when the database
        doesn't have the user's information */
    func displayErrorLogin() {
        errorMessage.text = "Email or password is not found."
        errorMessage.isEnabled = true
    }
    
    
    
    override func viewDidLoad() {
        //loginButton.isEnabled = false
        errorMessage.text = ""
        //setLoginButton()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    func setLoginButton(){
        if usernameTextfield.text != nil && passwordTextfield.text != nil && usernameTextfield.text != "" && passwordTextfield.text != ""{
            loginButton.isEnabled = true
        }
        else {
            loginButton.isEnabled = false
        }
    }
*/

}

