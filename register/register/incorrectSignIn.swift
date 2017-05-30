//
//  incorrectSignIn.swift
//  register
//
//  Created by UG Lemondo on 5/30/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit

class incorrectSignIn: UIViewController {
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var lowerLabel: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!


    var top = ""
    var lower = ""
    override func viewDidLoad() {
    }
    @IBAction func signUp(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "xxxsignUpScreen") as? signUpScreen
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func home(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
