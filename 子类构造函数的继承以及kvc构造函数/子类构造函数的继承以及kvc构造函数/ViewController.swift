//
//  ViewController.swift
//  子类构造函数的继承以及kvc构造函数
//
//  Created by YZH on 2018/12/17.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let p = Person(dict: ["name":"Y","age":21,"title":"34"])
        print(p.age,p.name!)
        let s = Student(dict: ["name":"Z","age":11,"title":"qw","no":45,"xxx":"123"])
        print(s.age,s.name!,s.no)
    }
}

