//
//  ViewController.swift
//  coubter
//
//  Created by s20171106521 on 2018/10/26.
//  Copyright © 2018 s20171106521. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
   // var operatorFlag: Double = 0
    //var temp: Double = 0
    //var value: Double = 0
    var firstOperand: Double = 0.0
    var secondOperand: Double = 0.0
    var decimalPointFlag: Bool = false
    var displaytext: String = ""
    var isSecond: Bool = false
   
    
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
    
    @IBAction func decimalPointTap() {
        
        if !decimalPointFlag {
            display.text = display.text! + "."
            if isSecond {
                secondOperand = (display.text! as NSString).doubleValue
            }else {
                firstOperand = (display.text! as NSString).doubleValue
            }
            
            decimalPointFlag = !decimalPointFlag
        }
    }
    @IBAction func buttonTap(_ sender: UIButton) {
        //lableResult 中默认是0,如果开始输入数字,则先清除0
        if display.text == "0" || (isSecond && secondOperand == 0.0) {
            
            display.text = ""
        }
        //将用户录入的数添加到lableResult中
        display.text = display.text! + sender.titleLabel!.text!
        
        if isSecond {
            
            //            secondOperand = (lableResult.text! as NSString).doubleValue
            secondOperand = NSString(string: display.text!).doubleValue
        }else {
            //将lableResult中的字符串转化为双精度数
            //            firstOperand = (lableResult.text! as NSString).doubleValue
            firstOperand = NSString(string: display.text!).doubleValue
        }
        print(firstOperand)
    }
    

    @IBAction func Except(_ sender: UIButton) {
        if display.text != "0" {
            isSecond = true
            display.text = "/"
            
    }
    }
    @IBAction func Minus(_ sender: UIButton) {
        if display.text != "0" {
            isSecond = true
            display.text = "-"
            
        }
    }
    @IBAction func Title(_ sender: UIButton) {
        if display.text != "0" {
            isSecond = true
            display.text = "*"
            
        }
    }
    @IBAction func ADD(_ sender: UIButton) {
        if display.text != "0" {
            isSecond = true
            display.text = "+"
            
        }
    }
    
    
    @IBAction func resultTap(_ sender: Any) {
        //确保第二操作数有值
        if isSecond {
            //除数不能为0
            if displaytext == "/" && secondOperand == 0 {
                print("Error: 除数不能为0")
                return
            }
            
            var result: Double = 0.0
            switch displaytext {
            case "+":
                result = firstOperand + secondOperand
            case "-":
                result = firstOperand - secondOperand
            case  "*":
                result = firstOperand * secondOperand
            case  "/":
                result = firstOperand / secondOperand
            default :
                result = 0.0
            }
            
            display.text = result.description
            print("第一操作: \(firstOperand)")
            print("操作符: \(displaytext)")
            print("第二操作: \(secondOperand)")
            print("结果: \(result)")
            
        }
    }
    @IBAction func clear(_ sender: Any) {
        
        //lable对象显示0
        display.text = "0"
        
        //第一操作数清零
        firstOperand = 0.0
        
        //第二操作数清零
        secondOperand = 0.0
        
        //小数点标记设置为假
        decimalPointFlag = false
        
        //第二操作数标记设置为假
        isSecond = false
        
        //操作清空
        displaytext = ""
        
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

