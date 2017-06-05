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
    
    let nums = "1234567890"
    let up = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let low = "abcdefghijklmnopqrstuvwxyz"
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var email: UITextField!
    
    func correctPassword()->Bool {
        
        var upperCase = false
        var lowerCase = false
        var number = false
        
       
        
        var s:String = password.text!
        
        for tempChar in s.unicodeScalars {
            if nums.contains(String(tempChar)) {
                number = true
            } else if up.contains(String(tempChar)) {
                lowerCase = true
            } else if low.contains(String(tempChar)) {
                upperCase = true
            }
        }
        
        return upperCase && lowerCase && number
    }
    
    func correctUsername()->Bool {
        var s:String = username.text!
        for tempChar in s.unicodeScalars {
            if !nums.contains(String(tempChar)) && !low.contains(String(tempChar)) {
                return false
            }
        }
        return true
    }
    
    func inputCorrect()-> Bool {
        if(username.text!.isEmpty || password.text!.isEmpty
            || address.text!.isEmpty || email.text!.isEmpty) {
            print("Every Field Should Be Filled")
            return false
        }
        
        if(!correctPassword()) {
            print("password must contains at least one number one uppercase and one lowercase character")
            return false
        }
        
        if(!correctUsername()) {
            print("username can contain only lowercase letters and numbers")
            return false
        }
        return true
    }
    
    @IBAction func home(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func back(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func signUp(_ sender: UIButton) {
        if(!inputCorrect()) {
            return
        }
        
        if(info.add(email.text!, username.text!, password.text!, address.text!)) {
            navigationController?.popToRootViewController(animated: true)
            print("New User Succesfully Created")
            
        } else {
            print("Username: \(username.text!) allready exists")
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
