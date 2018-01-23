//
//  ExtensionBundle.swift
//  OpenPDF
//
//  Created by pankx on 2018/1/23.
//  Copyright © 2018年 pank. All rights reserved.
//


import UIKit
extension UIWebView {
    static func openPDF(fileName: String,webview: UIWebView) {
        let file = Bundle.main.path(forResource: fileName, ofType: "pdf")
        let url = URL(fileURLWithPath: file!)
        let re = URLRequest(url: url)
        webview.center = CGPoint(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.5)
        webview.scalesPageToFit = true
        webview.loadRequest(re)
    }
    
//    convenience init(fileName: String,frame:CGRect) {
//
//        let wd = UIWebView(frame:frame)
//        //wd.backgroundColor = UIColor.red
//        wd.center = CGPoint(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.5)
//        let file = Bundle.main.path(forResource: fileName, ofType: "pdf")
//        let url = URL(fileURLWithPath: file!)
//        let re = URLRequest(url: url)
//        wd.scalesPageToFit = true
//        wd.loadRequest(re)
//        self.init(frame:frame)
//    }
    
}
