//
//  ViewController.swift
//  loginSystem
//
//  Created by Karen Jin on 4/18/18.
//  Copyright © 2018 DeAnza. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBAction func clickFirstToLogin(_ sender: UIButton) {
        performSegue(withIdentifier: "segueFirstToLogin", sender: self)
    }
    
    @IBAction func clickFirstToSignup(_ sender: UIButton) {
        performSegue(withIdentifier: "segueFirstToSignup", sender: self)
    }
    
    @IBAction func clickFirstToForget(_ sender: UIButton) {
        performSegue(withIdentifier: "segueFirstToForget", sender: self)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

