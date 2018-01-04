//
//  ViewController.swift
//  ARCTest
//
//  Created by pankx on 2018/1/3.
//  Copyright © 2018年 pank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var p: Person? = Person(name: "person")
        var h: Home? = Home(home: "Home")
        p!.home = h
        h!.person = p
        p = nil
        h = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    class Person{
        var name: String
        init(name: String) {
            self.name = name
        }
        var home: Home?
    }

    class Home {
        var person: Person?
        var home: String
        init(home: String) {
            self.home = home
        }
    }
}

