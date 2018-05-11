//
//  SignupViewController.swift
//  loginSystem
//
//  Created by Alvin Lin on 2018/5/3.
//  Copyright © 2018 DeAnza. All rights reserved.
//

import UIKit
import Firebase

class SignupViewController: UIViewController {

    @IBOutlet weak var securityA2: UITextField!
    @IBOutlet weak var securityQ2: UITextField!
    @IBOutlet weak var securityA1: UITextField!
    @IBOutlet weak var securityQ1: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!

    /** click from signUp page to Home page*/
    @IBAction func clickSignupToHome(_ sender: UIButton) {
        if let userName = userName.text, let pass = password.text, let confirmPass = confirmPassword.text, let email = email.text, let phone = phone.text, let firstQuestion = securityQ1.text, let secondQuestion = securityQ2.text, let firstAnswer = securityA1.text, let secondAnswer = securityA2.text {
            
            // check the password and confirmPassword
            if pass != confirmPass {
                
                // show message that the confirm message is wrong
                displayErrorPassword()
            }
            
            // check if all the textfiled are filled in
            if userName == "", pass == "", confirmPass == "", email == "", phone == "", firstQuestion == "", secondQuestion == "", firstAnswer == "", secondAnswer == "" {
                
                // show the message that shouldn't be blank
                displayDontBlank()
            }
                
            // if everything is OK, sign up
            else {
                // create a user and sign in
                Auth.auth().createUser(withEmail: email, password: pass) { (user, error) in
                    if let u = user {
                        self.performSegue(withIdentifier: "segueSignupToHome", sender: self)
                    }
                    else {
                        self.displayPasswordLimit()
                    }
                }
            }
        }
    }
    
    /** display the message that the user's password
        and confirmPassword are not correct */
    func displayErrorPassword() {
        errorMessage.text = "Confirm password is not correct."
        errorMessage.isEnabled = true
    }
    
    /** display the message that the limitation of passwrod. */
    func displayPasswordLimit() {
        errorMessage.text = "The password should be at least 6 characters."
        errorMessage.isEnabled = true
    }
    
    /** display don't leave the box blank. */
    func displayDontBlank() {
        errorMessage.text = "Please fill in all the questions."
        errorMessage.isEnabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorMessage.text = ""
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
