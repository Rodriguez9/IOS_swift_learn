//
//  ViewController.swift
//  通过闭包回调传递参数
//
//  Created by YZH on 2018/12/24.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData { (result) in
            print(result)
        }
    }
    func loadData(completion:@escaping(_ result:[String])->()){
        DispatchQueue.global().async {
            print("网络请求\(Thread.current)")
            Thread.sleep(forTimeInterval: 3.0)
            let json = ["123","234","455"]
            DispatchQueue.main.async(execute: {
                print("主线程更新\(Thread.current)")
                completion(json)
            })
        }
    }
}

