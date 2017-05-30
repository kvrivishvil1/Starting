//
//  MainScreen.swift
//  SimpleCalculator
//
//  Created by UG Lemondo on 5/24/17.
//  Copyright © 2017 lemondo. All rights reserved.
//

import UIKit
import Foundation

class MainScreen: UIViewController {
    
    @IBOutlet weak var screen: UILabel!
    var currOper:String = ""
    var savedValue:String = ""
    var dotIsWritten = false
    var isOperClicked = false
    
    func getOperator(_ op: Int) -> String {
        switch op {
        case 0 :
            return "+"
        case 1 :
            return "-"
        case 2 :
            return "/"
        case 3 :
            return "*"
        default :
            return ""
        }
    }
    
    func getResult() -> Double {
        let s = Double(savedValue)
        let s2 = Double(screen.text!)
        
        switch currOper {
        case "+":
            return s!+s2!
        case "-":
            return s!-s2!
        case "/":
            return s!/s2!
        case "*":
            return s!*s2!
        default:
            return 0
        }
        
    }
    
    func clearScreen(){
        screen.text = "0"
        currOper = ""
        savedValue = ""
        dotIsWritten = false
    }
    
    func equal() {
        if(currOper != "") {
            if(currOper == "/" && screen.text == "0") {
                clearScreen()
                return
            }
            dotIsWritten = true;
            screen.text = String(Double(getResult()))
            currOper = ""
            savedValue = ""
        }
    }
    
    @IBAction func oper(_ sender: UIButton) {
        let test = getOperator(sender.tag)
        if(isOperClicked){
            currOper = test
            return
        }
        
        if(savedValue == "") {
            savedValue = screen.text!
            screen.text = "0"
            dotIsWritten = false
        } else {
            equal()
            isOperClicked = true
        }
        
        if(currOper == "") {
            currOper = test
        }else if (currOper != "" && screen.text == "0") {
            currOper = test
        }
    }
    
    @IBAction func nmbr(_ sender: UIButton) {
        if(isOperClicked) {
            savedValue = screen.text!
            isOperClicked = false
            screen.text = "0"
            dotIsWritten = false
        }
        if(sender.tag == 10) {
            if(!dotIsWritten) {
                print("s")
                screen.text = screen.text! + "."
                dotIsWritten = true
            }
        }else if(screen.text == "0" && sender.tag != 0) {
            screen.text = String(sender.tag)
        } else if (screen.text != "0") {
            screen.text = screen.text! + String(sender.tag)
        }
    }
    

    
    @IBAction func eql(_ sender: UIButton) {
        equal()
    }
    
    @IBAction func clr(_ sender: UIButton) {
        clearScreen()
    }
}
