//
//  ViewController.swift
//  coubter
//
//  Created by s20171106521 on 2018/10/26.
//  Copyright © 2018 s20171106521. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var re: Double = 0
    var number: Double = 0
    var add: Double = 0
    var judge: Double = 0
    @IBOutlet weak var display1: UITextField!
    @IBOutlet weak var display2: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBAction func buttonZeon(_ sender: Any) {
        if re == 1{
            result.text = "0"
        }else{
            result.text = result.text! + "0"
        }
    }
    @IBAction func buttonOne(_ sender: Any) {
        if re == 1{
            result.text = "1"
        }else{
            result.text = result.text! + "1"
        }
    }
@IBAction func buttonTwo(_ sender: Any) {
    if re == 1{
        result.text = "2"
    }else{
        result.text = result.text! + "2"
    }
}
@IBAction func buttonThree(_ sender: Any) {
    if re == 1{
        result.text = "3"
    }else{
        result.text = result.text! + "3"
    }
}
@IBAction func buttonFour(_ sender: Any) {
    if re == 1{
        result.text = "4"
    }else{
        result.text = result.text! + "4"
    }
}
@IBAction func buttonFive(_ sender: Any) {
    if re == 1{
        result.text = "5"
    }else{
        result.text = result.text! + "5"
    }
}
@IBAction func buttonSix(_ sender: Any) {
    if re == 1{
        result.text = "6"
    }else{
        result.text = result.text! + "6"
    }
}
@IBAction func buttonSeven(_ sender: Any) {
    if re == 1{
        result.text = "7"
    }else{
        result.text = result.text! + "7"
    }
}
@IBAction func buttonEight(_ sender: Any) {
    if re == 1{
        result.text = "8"
    }else{
        result.text = result.text! + "8"
    }
}
@IBAction func buttonNine(_ sender: Any) {
    if re == 1{
        result.text = "9"
    }else{
        result.text = result.text! + "9"
    }
}
@IBAction func bottonDian(_ sender: Any) {
    result.text = result.text! + "."
    judge = 1
    
}
    
    @IBAction func percent(_ sender: Any) {
        let count = Double(result.text!)!
        let count2 = count * 0.01
        result.text = String(count2)
        re = 0
    }
    @IBAction func buttonAdd(_ sender: Any) {
    if add == 1{
        let number1 = Double(display1.text!)!
        let number2 = Double(result.text!)!
        let number3 = number1 + number2
        display1.text = String(number3)
        result.text = ""
        number = 2
        re = 1
    }else{
        if result.text == ""{
            result.text = "0"
        }else{
            let x = Double(result.text!)
            display1.text = String(x!)
            result.text = ""
            number = 2
            re = 0
        }
    }
    
}
    @IBAction func buttonminus(_ sender: Any){
        if add == 1{
            let number1 = Double(display1.text!)!
            let number2 = Double(result.text!)!
            let number3 = number1 - number2
            display1.text = String(number3)
            result.text = ""
            number = 2
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let x = Double(result.text!)
                display1.text = String(x!)
                result.text = ""
                number = 2
                re = 0
            }
        }
}
@IBAction func buttonDivisor(_ sender: Any) {
    if add == 1{
        let number1 = Double(display1.text!)!
        let number2 = Double(result.text!)!
        let number3 = number1 / number2
        display1.text = String(number3)
        result.text = ""
        number = 2
        re = 1
    }else{
        if result.text == ""{
            result.text = "0"
        }else{
            let x = Double(result.text!)
            display1.text = String(x!)
            result.text = ""
            number = 2
            re = 0
        }
    }
    
}
@IBAction func buttonProduct(_ sender: Any) {
    if add == 1{
        let number1 = Double(display1.text!)!
        let number2 = Double(result.text!)!
        let number3 = number1 * number2
        display1.text = String(number3)
        result.text = ""
        number = 2
        re = 1
    }else{
        if result.text == ""{
            result.text = "0"
        }else{
            let x = Double(result.text!)
            display1.text = String(x!)
            result.text = ""
            number = 2
            re = 0
        }
    }
    
}
    @IBAction func buttonResult(_ sender: Any) {
        var number4: Double
        var number5: Double
        let x = Double(display1.text!)!
        number5 = (result.text! as NSString).doubleValue
        if number == 1{
            number4 = x - number5
        }else if number == 2{
            number4 = x + number5
        }else if number == 3{
            number4 = x * number5
        }else if number == 4{
            number4 = x / (number5)
        }else {
            number4 = 1000
        }
        display2.text = String(number5)
        if judge == 1{
            result.text = String(format:"%f",number4)
        }else {
            result.text = String(format:"%.0f",number4)
        }
        re = 1
        judge = 0
        add = 0

}
@IBAction func buttonReset(_ sender: Any) {
    result.text = ""
}


@IBAction func DeleteNumber(_ sender: Any) {
    if(result.text!.count == 1)
    {
        result.text = "0"
        result.text = ""
    }
    if(result.text != "0"){
        result.text!.remove(at: result.text!.index(before:result.text!.endIndex))
        result.text = result.text!
    }
}

override func viewDidLoad()
{
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
}
}
    

