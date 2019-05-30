//
//  Person.swift
//  子类构造函数的继承以及kvc构造函数
//
//  Created by YZH on 2018/12/17.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class Person: NSObject {
    @objc var name : String?
    @objc var age : Int = 0
    @objc private var title : String?
    init(dict:[String:Any]) {
        super.init()
        setValuesForKeys(dict)
    }
}
