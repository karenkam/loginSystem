//
//  EmailConfirmViewController.swift
//  loginSystem
//
//  Created by Alvin Lin on 2018/5/4.
//  Copyright © 2018 DeAnza. All rights reserved.
//

import UIKit

var emailInputByuser: String = ""
var foundMan: userSecurityAnswer = userSecurityAnswer(answer1: "", answer2: "", email: "")

class EmailConfirmViewController: UIViewController {
    @IBOutlet weak var emailNeedConfirmed: UITextField!
    @IBAction func clickEmailToSecurity(_ sender: UIButton) {
        
        // TO DO: validation
        emailInputByuser = emailNeedConfirmed.text!
        
        // traverse all the users
        for e in users {
            
            // check if we have that user
            if e.email == emailInputByuser {
                foundMan = e
                performSegue(withIdentifier: "segueEmailToSecurity", sender: self)
            }
            
            else {
                print("We don't have your email.")
            }
        }
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
