//
//  Student.swift
//  子类构造函数的继承以及kvc构造函数
//
//  Created by YZH on 2018/12/17.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class Student: Person {
    @objc var no : Int = 0
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
}
