//
//  ViewController.swift
//  OpenPDF
//
//  Created by pankx on 2018/1/23.
//  Copyright © 2018年 pank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        openPDF(fileName: "pdf")
    }
}

extension ViewController {
    func openPDF(fileName: String) {
        let wd = UIWebView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        wd.center = view.center
        view.addSubview(wd)
        let file = Bundle.main.path(forResource: fileName, ofType: "pdf")
        let url = URL(fileURLWithPath: file!)
        let re = URLRequest(url: url)
        wd.scalesPageToFit = true
        wd.loadRequest(re)
    }
}


