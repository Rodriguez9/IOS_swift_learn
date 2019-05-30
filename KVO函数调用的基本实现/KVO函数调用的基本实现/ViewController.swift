//
//  ViewController.swift
//  KVO函数调用的基本实现
//
//  Created by YZH on 2018/12/13.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let p = person(dict: ["name":"rose"])
        print(p)
        print(p.name!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

