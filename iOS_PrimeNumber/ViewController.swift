//
//  ViewController.swift
//  iOS_PrimeNumber
//
//  Created by 王麒翔 on 2023/7/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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

