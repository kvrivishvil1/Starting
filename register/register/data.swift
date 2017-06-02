//
//  data.swift
//  register
//
//  Created by UG Lemondo on 5/31/17.
//  Copyright © 2017 UG Lemondo. All rights reserved.
//

import UIKit
class Data {
    
    var users = [User]()
    
    func isCorrect(_ username:String, _ password:String)->Bool {
        for i in 0..<users.count {
            if users[i].username == username && users[i].password == password {
                return true
            }
        }
        return false
    }
    
    func containsUsername(_ username:String)->Bool{
        for i in 0..<users.count {
            if users[i].username == username {
                return true
            }
        }
        return false
    }
    
    func containsEmail(_ email:String)->Bool {
        for i in 0..<users.count {
            if users[i].email == email {
                return true
            }
        }
        return false
    }
    
    func add(_ email:String, _ username:String, _ password:String, _ address:String) -> Bool{
        for i in 0..<users.count {
            if users[i].username == username || users[i].email == email {
                return false
            }
        }
        let obj = User();
        obj.address = address
        obj.email = email
        obj.username = username
        obj.password = password
        users.append(obj)
        return true
    }
    
}
