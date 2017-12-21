//: Playground - noun: a place where people can play

import UIKit

/*
 定义类的语法
 class calssName {
    property 、method
 }
 
 定义结构体的语法
 struct structName {
   property、method
 }
 
 */

//定义结构体CharacterStats
struct CharacterStats {
    var hp = 0.0
    var mp = 0.0
}

//定义GamesCharacter类
class GamesCharacter {
    var stats = CharacterStats()
    var attackSpeed = 1.0
    var name: String?
}

//创建实例
var ch = CharacterStats()
var game = GamesCharacter()

//获取属性值
print(ch.hp)
print(game.name ?? "")
print(game.stats.mp)

//设置性的值
ch.mp = 100.0
print(ch.mp)
game.name = "pankx"
print(game.name ?? "")
game.stats.hp = 10
print(game.stats.hp)
let ch1 = CharacterStats(hp: 129,mp: 32)
print("hp:\(ch1.hp) mp: \(ch1.mp)")

//值类型
var ch3 = CharacterStats(hp: 1020, mp: 293)
print("ch3.hp:\(ch3.hp)")
var cch = ch3
cch.hp = 333
print("cch.hp:\(cch.hp) ch3.hp:\(ch3.hp)")

//引用类型
var game1 = GamesCharacter()
print("game1.attackSpeed: \(game1.attackSpeed)")
var cgame = game1
cgame.attackSpeed = 3
print("game1.attackSpeed : \(game1.attackSpeed) cgame.attackSpeed: \(cgame.attackSpeed)")

//恒等 === 只适用于类实例
if cgame === game1 {
    print("相同")
}
if cgame !== cgame {
    print("不同")
}


