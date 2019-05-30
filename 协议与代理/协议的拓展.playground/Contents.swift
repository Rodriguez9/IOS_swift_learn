//: Playground - noun: a place where people can play

import UIKit
protocol Work{
    func text()
}

class Person{
    func num(x:Int,y:Int) -> Int {
        return x + y
    }
}

//Person类拓展:extension
extension Person:Work{
    func text() {
        print("协议的拓展")
    }
    
    func num1(x:Int,y:Int) -> Int {
        return x * y;
    }
}

let p = Person()
p.num(x: 20, y: 30)
p.num1(x: 20, y: 30)

