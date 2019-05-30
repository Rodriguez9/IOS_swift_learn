//
//  Person.swift
//  通过swift运行时获取属性列表
//
//  Created by YZH on 2018/12/25.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class Person: NSObject {
    @objc var title:String?
    @objc var name : String?
    @objc var age : Int = 0
    
    class func list() -> [String] {
        var count : UInt32 = 0
        let list = class_copyPropertyList(self, &count)
        for i in 0..<Int(count) {
            let pty = list?[i]
            let cName = property_getName(pty!)
            let name = String.init(utf8String:cName)
            print(name!)
        }
        return []
    }
    
}
