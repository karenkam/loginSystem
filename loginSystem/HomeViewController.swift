//
//  HomeViewController.swift
//  loginSystem
//
//  Created by Alvin Lin on 2018/5/4.
//  Copyright © 2018 DeAnza. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func clickHomeToLogin(_ sender: UIButton) {
        performSegue(withIdentifier: "segueHomeToLogin", sender: self)
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
