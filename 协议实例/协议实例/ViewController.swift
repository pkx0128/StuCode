//
//  ViewController.swift
//  协议实例
//
//  Created by pankx on 2018/1/7.
//  Copyright © 2018年 pank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Sname.name = "PankxSname"
        print(Sname.name)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
protocol StaticProperty {
    static var name: String{ get set }
}

class Sname: StaticProperty {
    static var name: String = ""
    static var age: Int = 0
}


