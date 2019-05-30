//
//  ViewController.swift
//  11.1Swift-单击手势
//
//  Created by YZH on 2018/11/19.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.frame = CGRect(x: 20, y: 40, width: 200, height: 40)
        label.text = "单击手势"
        label.textColor = UIColor.red
        label.backgroundColor = UIColor.brown
        label.textAlignment = .center
        //给控件添加手势：必须开启用户交互
        label.isUserInteractionEnabled = true
        view.addSubview(label)
        //添加手势
        //UITapGestureRecognizer是一个手势的集合（父类）
        let tapGesture = UITapGestureRecognizer.init()
        tapGesture.addTarget(self, action: #selector(tapClick))
        label.addGestureRecognizer(tapGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func tapClick() {
        print("bian")
    }

}

