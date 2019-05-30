//
//  UserInfo.swift
//  NSUserDefaults本地化存储
//
//  Created by YZH on 2018/11/9.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class UserInfo: NSObject ,NSCoding{
    var name:String?
    var phone:String?
    
    //required构造方法必须实现
    required init(name:String = "",phone:String = "") {
        self.name = name
        self.phone = phone
    }
    
    //从Object解析回来
    required init(coder decoder : NSCoder) {
        self.name = decoder.decodeObject(forKey: "name") as! String
        self.phone = decoder.decodeObject(forKey:"phone") as! String
    }

    //编码成object
    func encode(with coder:NSCoder){
        coder.encode(name,forKey: "name")
        coder.encode(phone,forKey: "phone")
    }
}
