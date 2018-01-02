//: Playground - noun: a place where people can play

import UIKit
//构造函数实例
class Person {
    var name: String
    var age: Int
    var sex: String
    //不带参数的构造函数
    init() {
        name = "Pankx"
        age = 18
        sex = "男"
    }
    //带参数的构造函数
    init(name: String,age: Int,sex: String) {
        self.name = name
        self.age = age
        self.sex = sex
    }
}

let p1 = Person()
print(p1.name)
print(p1.age)
print(p1.sex)

let p2 = Person(name: "haha", age: 22, sex: "女")
print(p2.name)
print(p2.age)
print(p2.sex)
//使用闭包初始化类的成员属性
class PersonClouse {
    let men: [Int] = {
        var mens = [Int]()
        for i in 1...10 {
            mens.append(i)
        }
        return mens
    }()
    let women: [String] = {
        var name = [String]()
        for i in 1...10 {
            name.append("name\(i)")
        }
        return name
    }()
}

let pc = PersonClouse()
print(pc.men)
print(pc.women)

//结构体的逐一成员构造器
struct Sdemo {
    var name: String
    var age: Int
}

let sd = Sdemo(name: "Struct", age: 18)
print(sd.name)


struct Size {
    var width = 0.0
    var height = 0.0
}

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init(){}
    init(origin: Point,size: Size){
        self.origin = origin
        self.size = size
    }
    init(center:Point,size:Size){
        let originX = center.x / 2
        let originY = center.y / 2
        self.init(origin: Point(x: originX,y: originY), size: Size())
    }
}
let r1 = Rect()
let r2 = Rect(origin: Point(), size: Size())
let r3 = Rect(center: Point(), size: Size())

//指定构造器与便利构造器
class MyPerson {
    var name: String
    //指定构造器
    init(name: String) {
        self.name = name
    }
    //便利构造器
    convenience init(){
        //使用构造器代理调用指定构造器初始化name的值
        self.init(name: "Convenience")
    }
}
//指定构造器生成实例
let myp = MyPerson(name: "pankx")
//便利构造器生成的实例
let myp2 = MyPerson()
print("myp.name = \(myp.name) myp2.name = \(myp2.name)")

//继承MyPerson类
class MyMen: MyPerson {
    var age: Int
    //定义指定构造器
    init(name: String,age: Int){
        self.age = age
        //调用父类初始化name
        super.init(name: name)
    }
    //重写父类的指定构造器
    override convenience init(name: String) {
        //使用构造器代理调用本类指定构造器
        self.init(name: "overrideName", age: 23)
    }
}
let mymen = MyMen()
let mymen2 = MyMen(name: "pankx")
let mymen3 = MyMen(name: "pankx2", age: 18)

print("mymen.name=\(mymen.name) mymen2.name = \(mymen2.name) mymen3.name = \(mymen3.name)")
print("mymen.age = \(mymen.age) mymen2.age = \(mymen2.age) mymen3.age = \(mymen3.age)")

//自动继承父类的指定与便利构造器
class MyWomen: MyPerson {
    var sex: String = "女"
    var sayHi: String {
        return "Hello"
    }
}

let mywomen = MyWomen()
let mywomen2 = MyWomen(name: "MyWomen")
print(mywomen.sayHi)
print(mywomen.name)
print(mywomen.sex)

print(mywomen2.sayHi)
print(mywomen2.name)
print(mywomen2.sex)

//必要构造器
class MustInit {
    var name: String
    //必要构造器
    required init(name: String) {
        self.name = name
    }
}
let mi = MustInit(name: "MustInit")
//继承MustInit
class SubInit: MustInit {
    var age = 10
    init(age: Int) {
        self.age = age
        super.init(name: "SubInit")
    }
    //必需定义父类中的必要构造器
    required init(name: String) {
        super.init(name: name)
//        fatalError("init(name:) has not been implemented")
    }
    
    convenience init() {
        self.init(name: "convenienceinit")
    }
    
}
let sub = SubInit()
print(sub.name)
print(sub.age)
let sub2 = SubInit(name: "sub2")
print(sub2.name)
print(sub2.age)
let sub3 = SubInit(age: 30)
print(sub3.name)
print(sub3.age)


