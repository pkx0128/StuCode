//: Playground - noun: a place where people can play

import UIKit

/*
 下标语法
 subscript (索引值：索引类型) -> 返回值类型 {
        get {
            ...
        }
        set(新值){
            ...
        }
 }
 
 subscript (索引值：索引类型) -> 返回值类型 {
        get{
            ...
        }
 }
 
 */
class SubscriptDemo {
    var num = 30
    subscript (add: String) -> Int {
        get{
            return num + 50
        }
        set {
            num = newValue * 500
        }
    }
    
    subscript (num: Int) -> Int{
        get{
            return num * 5
        }
        set {
            self.num = newValue * 3
        }
    }
}

var subdemo = SubscriptDemo()
subdemo["add"] = 40
print(subdemo["add"])

subdemo[100] = 5
print(subdemo[100])
print(subdemo.num)

