//: Playground - noun: a place where people can play

import UIKit

//在类中把闭包设置给成员属性会出现循环引用
class SayHi {
    var name: String
    var text: String?
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    //此处闭包调用self会引起循环引用
    lazy var SayTo: () -> String = {
        if let myText = self.text {
            return "\(self.name) say \(myText)"
        }else {
            return "\(self.name)"
        }
    }
    //增加捕获列表解决循环引用
    lazy var UnSayTo: () -> String = {
        [unowned self] in
        if let myMytext = self.text {
            return "\(self.name) to \(myMytext)"
        }else {
            return "\(self.name)"
        }
    }
}

let sh = SayHi(name: "pankx", text: "hello")
print(sh.SayTo())
print(sh.UnSayTo())


