//: Playground - noun: a place where people can play

import UIKit

protocol Pro{
    func text(str:String) -> String
    static func textTo(a:Int,b:Int)->Int
}

class Person:Pro{
    func text(str:String) -> String {
        return str.uppercased()
    }
    
    static func textTo(a: Int, b: Int)->Int {
        return a + b
    }
}

let p = Person()
p.text(str: "hello,world")
Person.textTo(a: 20, b: 30)

//定义结构体
struct Person1{
    var y : Int = 0
    var x : Int = 0
    //变异方法，结构体或枚举实例化不能改变属性值，除非变异方法
    mutating func count(x:Int,y:Int) {
        self.x = x
        self.y = y
    }
}

var p1 = Person1(y: 20, x: 15)
print(p1)
p1.count(x: 15, y: 15)


//定义枚举
enum Point{
    case off
    case on
    
    mutating func next(){
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        default:
            print("...")
        }
    }
}

var p2 = Point.off
p2.next()

//协议中的构造器
protocol initA{
    init(name:String)
}

class Person2 :initA{
    //required 实现协议中的构造器的关键字
    required init(name: String) {
        print("\(name)实现了协议中的构造器")
    }
}

let s = Person2(name: "Person2")


//子类也要实现构造方法
class student:Person2{
    
}

let s2 = student(name: "student")

//实现可选协议:@objc,不加的话一定要实现该方法
@objc protocol Pro1{
    @objc optional func num()
    func text2()
}

class Oerson2:Pro1{
    func text2() {
        print("必须实现")
    }
    
    func num(){
        print("可选实现")
    }
}

let p5 = Oerson2()
p5.text2()
p5.num()

