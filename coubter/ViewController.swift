//
//  ViewController.swift
//  coubter
//
//  Created by s20171106521 on 2018/10/26.
//  Copyright © 2018 s20171106521. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    var operatorFlag: Double = 0
    var temp: Double = 0
    var displaytext: String = ""
    @IBOutlet weak var display: UITextField!
    func RemovebuttonZero(textNumber: Double)->String{
        var str = "(\textnumber)"
        var str2 = str.components(separatedBy: ".")
        if(str2[1] == "")
        {
            str2[1] = "0"
        }
        if(Int(str2[1]) == 0)
        {
            str = str2[0]
        }
        return str
    }
    
    @IBAction func buttonZero(_ sender: Any){
        if(display.text == "0" )
        {
            display.text = " "
        }
        display.text = display.text! + "0"
    }
    @IBAction func buttonOne(_ sender: Any) {
        if(display.text == "0" )
        {
            display.text = " "
        }
        display.text = display.text! + "1"
    }
    @IBAction func buttonTwo(_ sender: Any) {
        if(display.text == "0" )
        {
            display.text = " "
        }
        display.text = display.text! + "2"
    }
    @IBAction func buttonThree(_ sender: Any) {
        if(display.text == "0" )
        {
            display.text = " "
        }
        display.text = display.text! + "3"
    }
    @IBAction func buttonFour(_ sender: Any) {
        if(display.text == "0" )
        {
            display.text = " "
        }
        display.text = display.text! + "4"
    }
    @IBAction func buttonFive(_ sender: Any) {
        if(display.text == "0" )
        {
            display.text = " "
        }
        display.text = display.text! + "5"
    }
    @IBAction func buttonSix(_ sender: Any) {
        if(display.text == "0" )
        {
            display.text = " "
        }
        display.text = display.text! + "6"
    }
    @IBAction func buttonSeven(_ sender: Any) {
        if(display.text == "0" )
        {
            display.text = " "
        }
        display.text = display.text! + "7"
    }
    @IBAction func buttonEight(_ sender: Any) {
        if(display.text == "0" )
        {
            display.text = " "
        }
        display.text = display.text! + "8"
    }
    @IBAction func buttonNine(_ sender: Any) {
        if(display.text == "0" )
        {
            display.text = " "
        }
        display.text = display.text! + "9"
    }
    @IBAction func bottonDian(_ sender: Any) {
           display.text = display.text! + "."
    }
    @IBAction func buttonAdd(_ sender: Any) {
        operatorFlag = 1
        temp = Double(display.text!)!
        display.text = ""
    }
    @IBAction func buttonSlow(_ sender: Any) {
        operatorFlag = 2
        temp = Double(display.text!)!
        display.text = ""
    }
    @IBAction func buttonChu(_ sender: Any) {
        operatorFlag = 3
        temp = Double(display.text!)!
        display.text = ""
    }
    @IBAction func buttonProduct(_ sender: Any) {
        operatorFlag = 4
        temp = Double(display.text!)!
        display.text = ""
    }
    @IBAction func buttonResult(_ sender: Any) {
        if operatorFlag  == 1 {
        temp = temp + Double(display.text!)!
        display.text = "\(temp)"
    }
        if operatorFlag  == 2 {
            temp = temp - Double(display.text!)!
            display.text = "\(temp)"
        
    }
        if operatorFlag  == 3 {
            temp = temp / Double(display.text!)!
            display.text = "\(temp)"
            
        }
        if operatorFlag  == 4 {
            temp = temp * Double(display.text!)!
            display.text = "\(temp)"
            
        }
    }
    @IBAction func buttonReset(_ sender: Any) {
            display.text = "0"
    }
    
    
    @IBAction func DeleteNumber(_ sender: Any) {
        if(display.text!.count == 1)
        {
            display.text = "0"
            displaytext = ""
        }
        if(display.text != "0"){
            display.text!.remove(at: display.text!.index(before:display.text!.endIndex))
            displaytext = display.text!
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

