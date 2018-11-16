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
    @IBOutlet weak var display: UITextField!
    
    @IBAction func display(_ sender: Any) {
        if display.text == "="
        {
            display.text=""
        }
        if operatorFlag  == 1
        {
            display.text=""
        }
        if operatorFlag  == 2
        {
            display.text=""
        }
        if operatorFlag  == 3
        {
            display.text=""
        }
        if operatorFlag  == 4
        {
            display.text=""
        }
    }
    @IBAction func buttonZero(_ sender: Any){
        display.text = display.text! + "0"
    }
    @IBAction func buttonOne(_ sender: Any) {
        display.text = display.text! + "1"
    }
    @IBAction func buttonTwo(_ sender: Any) {
        display.text = display.text! + "2"
    }
    @IBAction func buttonThree(_ sender: Any) {
        display.text = display.text! + "3"
    }
    @IBAction func buttonFour(_ sender: Any) {
        display.text = display.text! + "4"
    }
    @IBAction func buttonFive(_ sender: Any) {
        display.text = display.text! + "5"
    }
    @IBAction func buttonSix(_ sender: Any) {
        display.text = display.text! + "6"
    }
    @IBAction func buttonSeven(_ sender: Any) {
        display.text = display.text! + "7"
    }
    @IBAction func buttonEight(_ sender: Any) {
        display.text = display.text! + "8"
    }
    @IBAction func buttonNine(_ sender: Any) {
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
            display.text = "0 "
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

