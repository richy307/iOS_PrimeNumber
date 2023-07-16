//
//  ViewController.swift
//  iOS_PrimeNumber
//
//  Created by 王麒翔 on 2023/7/13.
//

import UIKit

class ViewController: UIViewController {
    
    // 最上方狀態列 文字變成白色
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func doThePrimeTest(_ sender: UIButton) {
        
        // 1. take out the number string from the inputTextField
        if let inputText = inputTextField.text {
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // push the keyboard up // 觸發 input 顯示鍵盤
        inputTextField.becomeFirstResponder()
    }

    
    func checkPrime( withNumber testNumber:Int ) -> String {
        
        var isPrime: Bool? = true
        
        if testNumber <= 0 {
            isPrime = nil
        } else if testNumber == 1 {
            isPrime = false
        } else {
            for i in 2..<testNumber {
                if testNumber % i == 0 {
                        // inputNumber is not prime
                    isPrime = false
                    break
                }
            }
        }
        
        if isPrime == true {
            return "\(testNumber) is prime"
        } else if isPrime == false {
            return "\(testNumber) is not prime"
        } else {
            return "Please enter a number greater than 0"
        }
    }
    
    func checkPrime(withNumber number: Int, andCompletionHandler handler: (String)->() ) {
        let result = checkPrime(withNumber: number)
        handler(result)
    }
}

