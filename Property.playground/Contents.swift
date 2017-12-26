//: Playground - noun: a place where people can play

import UIKit

/*
 属性：
 存储属性：stored property
 计算弄属性: computed property
 类属性: type property
 属性观察器：property observer
 */

//结构体存储属性
struct someName {
    var name1 = "xiaoPan"
    var name2: String
    let name3: String
}

var someNameDemo = someName(name1: "pankx", name2: "abc", name3: "safsjl")
print(someNameDemo.name1)
someNameDemo.name1 = "pankxname1"
someNameDemo.name2 = "pankxname2"
//name3为常量不初始化后不可修改
//someNameDemo.name3 = "pankxName3"

//类的存储属性
class SomeNameClass {
    var nameclass1 = "pankx"
    var nameclass2 = ""
}
//由于类为引用类型所以实例定义为常量也可以个性属性的值
let someNameClass = SomeNameClass()
print(someNameClass.nameclass1)

someNameClass.nameclass2 = "pankx2"
print(someNameClass.nameclass2)

//MARK: - 类、结构体、枚举都可以定义计算型属性（computed property）
class computedDemo {
    var age1 = 0
    var age2 = 1
    var age3: Int {
        get{
            return age1 + age2
        }
        /*
         set可以省参数，因为系统会提供一个newValue的属性,
         属性的值就是要设置的新值
        */
        set {
            age1 = newValue + 10
            age2 = newValue + 20
        }
    }
}

let computed = computedDemo()
computed.age3 = 50
print(computed.age3)
print(computed.age1)
//只读计算型属性

class computedDemo2 {
    var age4 = 0
    var age5 = 1
    //只读计算型属性可以省略get及{}
    var age6: Int {
        return age4 + age5
    }
}

//属性观察器property observer
class obproperty {
    var changeV : Int = 100 {
        //设置值之前
        willSet {
            print("willSet \(newValue)")
        }
        //设置值之后
        didSet {
            print("didSet \(oldValue)")
            if oldValue < changeV {
                print("属性观察器")
            }
        }
    }
}

let ob = obproperty()
ob.changeV = 90
print(ob.changeV)

//类型属性
struct StructDemo {
    static var property = "This is a structDemo"
    static var computeProperty : Int {
        get{
            return 8
        }
    }
}

print(StructDemo.property)
print(StructDemo.computeProperty)

enum EnumDemo {
    static var property = "This is a EnumDemo"
    static var computeProperty: Int {
        return 9
    }
}

print(EnumDemo.property)
print(EnumDemo.computeProperty)

class ClassDemo {
    static var property = "This is a ClassDemo"
    static var computeProperty: Int {
        return 10
    }
    class var classcomputeProperty: Int {
        return 13
    }
}

print(ClassDemo.property)
print(ClassDemo.computeProperty)
print(ClassDemo.classcomputeProperty)
















