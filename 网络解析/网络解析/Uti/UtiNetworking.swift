//
//  UtiNetworking.swift
//  alamofiretest
//
//  Created by YZH on 2018/12/2.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit
import Alamofire
class UtiNetworking: NSObject {

   class func post(withURL url:String,parameters:[String:String],response:@escaping (Bool,Any?)->Void){
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON { (result) in
            if result.result.error != nil{
                response(false,result.result.error?.localizedDescription)
            }else{
                response(true,result.result.value)
            }
        }
    }
}
