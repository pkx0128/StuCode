//: Playground - noun: a place where people can play

import UIKit

//枚举语法
/*
 enum 枚举名称 {
    枚举项 用case关键字列举 如 case abc
}
 */
//定义compass枚举类型
enum compass {
    case north
    case south
    case west
    case east
}

//使用枚举中的值
var myenumeration = compass.north
myenumeration = .west

//使用switch语句匹配枚举值
switch myenumeration {
case .north:
    print("north")
case .south:
    print("south")
case .east:
    print("east")
case .west:
    print("West")
}

enum barcode {
    case UPC(Int,Int,Int,Int)
    case QCode(String)
}
//定义枚举的相关值
var mybarcode = barcode.UPC(10, 101, 10, 11)
print(mybarcode)
mybarcode = barcode.QCode("ABDDKGODF")
print(mybarcode)

//匹配barcode的值并使用变量取出相关值
switch mybarcode {
case .UPC(let n1,let n2, let n3, let n4):
    print("\(n1)")
case .QCode(let qcode):
    print("\(qcode)")
}

//简化语法
switch mybarcode {
case let .UPC(n1, n2, n3, n4):
    print("\(n1)")
case let .QCode(qcode):
    print("\(qcode)")
}
//枚举的原始值实例
enum RawValueEnum: Int {
    case sunday = 1
    case monday = 2
    case tuesday = 3
    case wednesday = 4
    case thuresday = 5
    case friday = 6
    case saturday = 7
}

let myraw = RawValueEnum.sunday
print(myraw.rawValue)
//原始值类型为Int类型的枚举，不为枚举项目设置原始值，系统将隐式顺序赋值
enum IntRaw: Int {
    case Int0
    case Int1
    case Int2
    case Int3
}
print(IntRaw.Int3.rawValue)

//原始值类型为String类型的枚举，不为枚举项目设置原始值，系统将项名设为原始值
enum StringRaw: String {
    case string1
    case string2
    case string3
    case string4
}
print(StringRaw.string2.rawValue)









