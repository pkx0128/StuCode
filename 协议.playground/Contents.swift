//: Playground - noun: a place where people can play

import UIKit

/*
 协议的语法：
 protocol 协议名 {
    协议定义的内容
 }
 
 */
protocol P1 {
    
}

/*
 协议的定义属性：
 protocol 协议名 {
     var 属性名: 类型 {get set}
     var 属性名: 类型{get}
 }
 */
protocol Name {
    var name: String { get set }
    var age: Int { get }
}
//遵循协议
class NameToProtocol: Name {
    var name: String
    var age:Int
    init(name: String,age: Int) {
        self.name = name
        self.age = age
    }
}
let cn = NameToProtocol(name: "pankx",age: 88)
//cn.name = "pankx1"
//cn.age = 98
print(cn.name)
print(cn.age)

//协议中定义类属性用static或class关键字定义
protocol StaticPropety {
    static var name: String{ get set }
}
class Sname: StaticPropety {
    static var name: String = ""
    static var age: Int  = 0

}
Sname.age = 12
Sname.name = "pankxSname"
print(Sname.name)
print(Sname.age)
//结构体遵循协议
struct NameStruct: StaticPropety {
    static var name: String = ""
}
NameStruct.name = "NameStruct"
print(NameStruct.name)

//协议中定义方法
protocol DefineFunction {
    func sayHi()
    static func sSayhi()
    //引用类型实现方法前面不用Mutating，值类型需要加Mutating(值类型如结构体、枚举等才会有变异方法)
    mutating func change(a: Int,b: Int)
}
//遵循DefineFunction协议
class SayHi: DefineFunction {
    var a = 12
    var b = 30
    func change(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    func sayHi() {
        print("Hello this is a Protocol")
    }
    static func sSayhi() {
        print("This is a static protocol")
    }
}

let sh = SayHi()
sh.sayHi()
//static 方法不用创建类实例
SayHi.sSayhi()
sh.change(a: 50, b: 60)
print(sh.a)
print(sh.b)

struct MFunction: DefineFunction {
    var a = 90
    var b = 100
    //值类型的变异方法
    mutating func change(a: Int, b: Int)  {
        self.a = a
        self.b = b
    }
    
    func sayHi(){
        print("This is a Struct sayhi")
    }
    static func sSayhi() {
        print("This is a Struct static Function")
    }
    
}
MFunction.sSayhi()
let ss = MFunction()
ss.sayHi()

//协议定义构造器
protocol InitProtocol {
    var name: String{ get set }
    var age: Int{get set }
    init(name: String,age: Int)
}

//类遵循协议的构造器要使用 required 关键字修饰
class InitProtocolDemo: InitProtocol {
    var name: String
    var age: Int
    required init(name: String,age: Int){
        self.name = name
        self.age = age
    }
}
//结构不需要加required
struct InitProtocolStruct: InitProtocol {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class SubInitProtocolDemo: InitProtocolDemo {
    
    required init(name: String, age: Int) {
        super.init(name: name,age: age)
        self.name = name
        self.age = age
        
    }
}

protocol Person {
    func reading()
}
protocol PersonDelegate {
    func didReading()
}
class Persondl: PersonDelegate {
    func didReading() {
        print("Persondl DidReading")
    }
}

class PersonDemo: Person {
    var delegate1: PersonDelegate?
    func reading() {
        print(" PersonDemo reading")
        delegate1?.didReading()
    }
}
let p = PersonDemo()
p.delegate1 = Persondl()
//p.delegate1?.didReading()
p.reading()

