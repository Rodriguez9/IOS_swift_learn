//: Playground - noun: a place where people can play

import UIKit

//定义协议
protocol Work{
    func text()
}

//委托方：店家
//1.制定协议
//2.制定代理属性（制定谁为我代理）
//3.实现代理方法
class Person{
    var delegate:Work?
    var money = 15
    
    func result(){
        print("过来做事")
        if ((delegate?.text()) != nil){
            print("已经来了-工资\(money)")
        }
    }
}

//代理方：工作的
//1.遵守协议
//2.成为代理方
//3.实现协议方法
class student:Work{
    func text() {
       print("马上过来")
    }
}

let p = Person()
let s = student()

//谁成为我的代理
p.delegate = s
p.result()
