//
//  ViewController.swift
//  代理
//
//  Created by pankx on 2018/1/8.
//  Copyright © 2018年 pank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var p: Personclass? = Personclass()
        p?.delegate = PersonDelegateclass()
        p?.delegate?.didReading()
//        p?.reading()
//        p = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

protocol Person {
    func reading()
}
protocol PersonDelegate {
    func didReading()
}
class Personclass: Person {
    var delegate: PersonDelegate?
    func reading(){
        print("PersonClass Reading")
        //delegate?.didReading()
    }
}

class PersonDelegateclass: PersonDelegate {
    func didReading() {
        print("didReading")
    }
}

