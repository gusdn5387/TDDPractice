//
//  ViewController.swift
//  TDDPractice
//
//  Created by 박현우 on 2022/04/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController {
    func setupLayout() {
        view.backgroundColor = .yellow
    }
    
    func divide(a: Int, b: Int) -> Int {
        return a / b
    }
    
    func evenCheck(_ num: Int) -> Bool {
        return num % 2 == 0
    }
    
    func convert(_ num: Int) -> String {
        var result: String
        
        if (num < 5) {
            result = String(repeating: "I", count: num)
        } else if (num == 5) {
            result = "V"
        } else {
            result = "VI"
        }
        
        return result
    }
}

