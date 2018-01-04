//: Playground - noun: a place where people can play

import UIKit

//强引用（类实例被赋给变量、常量、属性等）
class SomePerson {
    var name: String

    init(name: String) {
        self.name = name
    }
}

var sp1: SomePerson?
var sp2: SomePerson?
var sp3: SomePerson?

sp1 = SomePerson(name: "sp1")
sp2 = sp1
sp3 = sp1

sp1 = nil
sp2 = nil
sp3 = nil
//=================================================== 下面代码为类的循环引用实例 =======================
//下面Person与Home会出现循环引用(两个类中互相拥有强引用属性)
class Person {
    var name: String
    var home: Home?
    init(name: String) {
        self.name = name
    }
}

class Home {
    var name: Person?
    var home: String
    init(home: String) {
        self.home = home
    }
}
var xiaoming: Person?
    xiaoming = Person(name: "xiaoming")
var myhome: Home?
    myhome = Home(home: "xiaomingHome")

xiaoming?.home = myhome
myhome?.name = xiaoming
xiaoming = nil
myhome = nil

//用弱引用 weak 解决类的循环引用
class AnotherPerson {
    var name: String
    init(name: String) {
        self.name = name
    }
    //此次使用weak定义home为弱引用从而解决了循环引用
   weak var home: AnotherHome?
}
class AnotherHome {
    var home: String
    init(home: String) {
        self.home = home
    }
    var name: AnotherPerson?
}
var ap: AnotherPerson? = AnotherPerson(name: "AnotherPerson")
var ah: AnotherHome? = AnotherHome(home: "AnotherHome")
ap?.home = ah
ah?.name = ap
ap = nil
ah = nil

//用无主引用 unowned 解决循环引用
class CardMen {
    var name: String
    var card: IDCard?
    init(name: String){
        self.name = name
    }
}

class IDCard {
    var idnum: Int
   unowned let men: CardMen
    init(idnum: Int, men: CardMen){
        self.idnum = idnum
        self.men = men
    }
}

let cm = CardMen(name: "CardMen")
let id = IDCard(idnum: 83748373, men: cm)

class Country {
    var name: String
    var capitalCity: City!
    init(name: String, cityName: String) {
        self.name = name
        self.capitalCity = City(name: cityName, country: self)
    }
}

class City {
    var name: String
   unowned let country: Country
    init(name: String,country: Country) {
        self.name = name
        self.country = country
    }
}

let cn = Country(name: "中国", cityName: "北京")

// ============================================ end ======================

