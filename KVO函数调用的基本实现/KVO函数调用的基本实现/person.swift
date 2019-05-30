//
//  person.swift
//  KVO函数调用的基本实现
//
//  Created by YZH on 2018/12/13.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class person: NSObject {
    //在swift4.0以后如果要使用KVC访问类属性，需要在属性前加@objc
    //kvc属于oc语言
    @objc var name : String?
    init(dict:[String:Any]) {
        super.init()
        setValuesForKeys(dict)
    }
}
