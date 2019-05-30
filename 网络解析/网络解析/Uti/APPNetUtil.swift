//
//  APPNetUtil.swift
//  网络解析
//
//  Created by YZH on 2018/12/2.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class APPNetUtil: NSObject {
    class func login(phone:String,password:String,response:@escaping (Bool,Any?)->Void) {
        let parameters = [
            "phone":phone,
            "password":password
        ]
        //http://k12.xiaocool.net/index.php?g=apps&m=test&a=applogin&phone=15684160915&password=123
        UtiNetworking.post(withURL: "http://ir-2016137559.cn-north-1.elb.amazonaws.com.cn/api/v2/rank.php", parameters: parameters) { (success, result) in
            if success {
                response(true,result)
            }else{
                response(false,result)
            }
        }
    }
}
