//: Playground - noun: a place where people can play

import UIKit

//1. 协议的声明
protocol Pro{
    func text()
}

class Person:Pro{
    //遵循协议必须实现方法
    func text() {
        print("遵循了Pro这个协议并且实现了方法")
    }
}


let p = Person()
p.text()

//在OC中结构体和枚举不准讯协议

struct Student:Pro{
    func text() {
        print("结构体遵循了Pro这个协议并且实现了方法")
    }
}

let p1 = Student()
p1.text()

//
enum num:Pro{
    case blue
    func text() {
        print("枚举遵循了Pro这个协议并且实现了方法")
    }
}

let p2 = num.blue
p2.text()

//协议的继承
protocol Pro1:Pro{
    func result(x:Int,y:Int) -> Int
}

class Person1:Pro1{
    func result(x: Int, y: Int) -> Int {
        return x+y
    }
    
    func text() {
        print("实现了Pro协议的方法")
    }
}

class Son:Person1{
    override func text() {
        print("子类实现了Pro中的方法")
    }
}

let so = Son()
so.text()

