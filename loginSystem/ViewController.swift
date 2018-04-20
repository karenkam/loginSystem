//
//  ViewController.swift
//  loginSystem
//
//  Created by Karen Jin on 4/18/18.
//  Copyright © 2018 DeAnza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func clickFirstToSecond(_ sender: UIButton) {
        performSegue(withIdentifier: "segueFirstToSecond", sender: self)
    }
    
    @IBAction func clickToSignupBtn(_ sender: Any) {
        performSegue(withIdentifier: "clickToSignupBtn", sender: self)
    }
    
    @IBAction func clickForgetBtn(_ sender: Any) {
        performSegue(withIdentifier: "clickForgetBtn", sender: self)
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

