//
//  ViewController.swift
//  使用session加载新浪数据
//
//  Created by YZH on 2018/12/25.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://www.sina.com")
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
            guard let data = data else{
                return
            }
            let html = String(data: data, encoding: .utf8)
            print(html!)
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

