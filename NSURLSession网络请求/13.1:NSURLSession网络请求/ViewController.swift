//
//  ViewController.swift
//  13.1:NSURLSession网络请求
//
//  Created by YZH on 2018/11/20.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1.获取URL(地址)
        //创建URL对象
        let url : URL! = URL(string: "http://api.3g.ifeng.com/clientShortNews?type=beauty")
        //2.创建请求对象,Request对象
        let urlRequest : URLRequest = URLRequest(url: url)
        //3.创建一个会话对象
        let session = URLSession.shared
        //4.创建一个任务(NSURLSession)
        let dataTask = session.dataTask(with: urlRequest) { (data:Data?, response:URLResponse?, error:Error?) in
            //6.请求成功后需要做的事情
            if error != nil{
                print(error?.localizedDescription as Any)
            }else{
                let jsonStr = String(data:data!,encoding:String.Encoding.utf8)
                print(jsonStr)
              
            }
        }
        //5.开启任务
        dataTask.resume()
    }
}

