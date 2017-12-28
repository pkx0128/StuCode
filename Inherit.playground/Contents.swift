//: Playground - noun: a place where people can play

import UIKit

//Base Class
class Person {
    var name: String = "pankx"
    var age: Int = 20
    //final 关键字修饰的属性，方法都不能被子类重写
    final var phone: String = "12345678909"
//    init(name: String,age: Int) {
//        self.name = name
//        self.age = age
//    }
}

let p = Person()
print(p.name)
print(p.age)

//SubClass Inherit Base Class
class SubPerson: Person {
    
    func write() {
        print("I can write name:\(name) age:\(age)")
    }
    var sex: String {
        return "男"
    }
}

let sp = SubPerson()
print(sp.name)
sp.write()
print(sp.sex)

//Inherit SubPerson
class SubPerson1: SubPerson {
    //override write function
    override func write() {
        print("This is a override function")
    }
    //override sex property
    override var sex: String{
        return "女"
    }
    //override name property
    override var name: String {
        get {
            return "overridePankx"
        }
        set{
            print(newValue)
        }
    }
    
    //can't override the final property
//    override var phone: String {
//        get{
//
//        }
//        set {
//
//        }
//    }
}
let sp1 = SubPerson1()
sp1.write()
sp1.name = "pankxxxx"
print(sp1.name)
print(sp1.sex)

