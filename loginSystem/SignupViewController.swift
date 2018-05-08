//
//  SignupViewController.swift
//  loginSystem
//
//  Created by Alvin Lin on 2018/5/3.
//  Copyright © 2018 DeAnza. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignupViewController: UIViewController {

    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!

    /** click from signUp page to Home page*/
    @IBAction func confirm(_ sender: UIButton) {
        if let email = userName.text, let pass = password.text, let confirmPass = confirmPassword.text {
            // check the password and confirmPassword
            if pass == confirmPass {
                // create a user and sign in
                Auth.auth().createUser(withEmail: email, password: pass) { (user, error) in
                    self.performSegue(withIdentifier: "segueSignupToHome", sender: self)
                }
            }
            else {
                // show message that the confirm message is wrong
            }
        }
    }
    
    /** display the message that the user's password
        and confirmPassword are not correct */
    func displayErrorPassword() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
