//
//  ViewController.swift
//  闭包函数的使用和逃逸闭包
//
//  Created by YZH on 2018/12/20.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        test(a: 10) { (bb,cc) -> (Int) in
            return 10
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func test(a:Int,b:(Int,Int) -> (Int)){
        let result = b(1,2)
        print(result)
    }
    
    
    //逃逸闭包：就是被强引用，有可能被其他闭包或者其他函数延长生民周期
    //也可以说最后一个参数是闭包的话就是一个逃逸闭包用@escaping描述
    func test2(a:Int,b:@escaping(_ a:Int,_ b:Int) -> (Int)){
        let result = b(1,2)
        print(result)
    }

}

