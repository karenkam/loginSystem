//
//  SecurityConfirmViewController.swift
//  loginSystem
//
//  Created by Alvin Lin on 2018/5/4.
//  Copyright © 2018 DeAnza. All rights reserved.
//

import UIKit
import Firebase

class SecurityConfirmViewController: UIViewController {

    @IBOutlet weak var answer1: UITextField!
    
    @IBOutlet weak var answer2: UITextField!
    @IBAction func clickSecurityToLogin(_ sender: UIButton) {
        
        // check security answer
        if foundMan.answer1 == answer1.text && foundMan.answer2 == answer2.text{
                
            //TODO: sent password by email
            Auth.auth().sendPasswordReset(withEmail: foundMan.email) { error in
                if let e = error {
                }
                
                // no error, go to the home page
                else {
                    self.performSegue(withIdentifier: "segueSecurityToLogin", sender: self)
                }
            }
        }
            
        else {
            print("Wrong!!!")
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
