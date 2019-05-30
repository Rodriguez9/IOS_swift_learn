//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//定义协议的属性
protocol Pro{
    var name : String{set get}//read/write
    var age : Int{get}//read
    static var status:Int{set get}
    
}

//结构体遵循协议
struct str2 : Pro{
    var strName:String = ""
    var name: String {
        set{
            strName = newValue
        }
        get{
            return strName
        }
    }
    
    var age: Int{
        get{
            return 18
        }
    }
    
    static var status: Int = 1
}

//实例化结构体
let s = str2(strName: "Jack")
print(s)

//类准讯协议
class Person: Pro{
    var strName:String = ""
    var name: String {
        set{
            strName = newValue
        }
        get{
            return strName
        }
    }
    
    var age: Int{
        get{
            return 18
        }
    }
    
    static var status: Int = 1
}

let p = Person.init()
p.name="Jack"
print(p.strName)


