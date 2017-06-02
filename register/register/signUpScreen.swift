//
//  signUpScreen.swift
//  register
//
//  Created by UG Lemondo on 5/30/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit

class signUpScreen: UIViewController {
    
    var info:Data!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var email: UITextField!
    
    @IBAction func home(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func back(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func signUp(_ sender: UIButton) {
        if(username.text!.isEmpty || password.text!.isEmpty
            || address.text!.isEmpty || email.text!.isEmpty) {
            print("incorrect input")
            return
        }
        let res:Bool = info.add(email.text!, username.text!, password.text!, address.text!)
        if(res) {
            let vc = storyboard?.instantiateViewController(withIdentifier: "xxxsuccessfullSignup") as? successfullSignup
            vc?.lowerText = username.text
            navigationController?.pushViewController(vc!, animated: true)
        } else {
            print("allready exists")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
