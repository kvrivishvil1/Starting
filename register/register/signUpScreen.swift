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
    
    func correctPassword()->Bool {
        
        var upperCase = false
        var lowerCase = false
        var number = false
        
        let x = "1234567890"
        let up = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let low = "abcdefghijklmnopqrstuvwxyz"
        
        var s:String = password.text!
        
        for tempChar in s.unicodeScalars {
            if x.contains(String(tempChar)) {
                number = true
            } else if up.contains(String(tempChar)) {
                lowerCase = true
            } else if low.contains(String(tempChar)) {
                upperCase = true
            }
        }
        
        return upperCase && lowerCase && number
    }
    
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
        
        if(!correctPassword()) {
            print("password must contains at least one number one uppercase and one lowercase character")
            return
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
