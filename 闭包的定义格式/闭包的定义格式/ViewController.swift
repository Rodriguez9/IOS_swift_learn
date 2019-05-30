//
//  ViewController.swift
//  闭包的定义格式
//
//  Created by YZH on 2018/12/17.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let b = {
            print("123")
        }
        b()
        
        //in告诉程序闭包定义完毕
        let a = {(x:Int)->() in
            print(x)
        }
        a(12)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

