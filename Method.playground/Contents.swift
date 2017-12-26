//: Playground - noun: a place where people can play

import UIKit

//实例方法 (instance Method)
class instanceMethodDemo {
    var a = 1
    func outA() {
        self.a = 3
        print(a)
    }
    
    func changea(a: Int) {
        print(a + 10)
    }
}

let inDemo = instanceMethodDemo()
inDemo.outA()
inDemo.changea(a: 88)

//类方法
class ClassMethod {
    class func classmethod() {
        print("This is a class Method")
    }
    static func classmethodstatic() {
        print("This is a static calss Method")
    }
}
ClassMethod.classmethod()
ClassMethod.classmethodstatic()

//变异方法个性值类型的实例属性
struct StructDemo {
    var x = 10
    var y = 20
    //实例方法修改值类型的属性需使用变异方法，在方法前加上 mutating 关键字
   mutating func change(){
        self.x = 30
        self.y = 40
    print("\(x) \(y)")
    }
}

var sdemo = StructDemo()
sdemo.change()





