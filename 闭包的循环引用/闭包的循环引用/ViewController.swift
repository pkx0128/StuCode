//
//  ViewController.swift
//  闭包的循环引用
//
//  Created by pankx on 2018/1/4.
//  Copyright © 2018年 pank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var op: Output? = Output(name: "output", text: "Hello")
        print(op?.sayHi())
        op = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    class Output {
        var name: String
        var text: String?
        init(name: String, text: String? = nil) {
            self.name = name
            self.text = text
        }
        lazy var sayHi: () -> String = {
            [unowned self] in
            if let text = self.text {
                return "\(self.name) -> \(text)"
            }else {
                return "\(self.name)"
            }
        }
    }
    

}

