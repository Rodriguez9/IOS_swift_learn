//
//  ViewController.swift
//  11.7CoreAnimation动画
//
//  Created by YZH on 2018/11/14.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let v = UIView()
        v.frame = CGRect(x: 30, y: 100, width: 300, height: 300)
        
        //图片
        let img = UIImageView()
        img.frame = v.frame
        img.image = UIImage.init(named: "1.jpg")
        
        v.addSubview(img)
        view.addSubview(v)
        //裁剪圆形
        img.layer.cornerRadius = img.frame.width/2
        //边框宽度
        img.layer.borderWidth = 3
        //边框颜色
        img.layer.borderColor = UIColor.blue.cgColor
        //裁剪圆形以外的区域
        img.layer.masksToBounds = true
        //设置图片阴影的颜色
        v.layer.shadowColor = UIColor.red.cgColor
        //设置阴影偏移量
        v.layer.shadowOffset = CGSize(width: 0, height: 1)
        //设置阴影的半径
        v.layer.shadowRadius = 10
        //设置阴影透明度
        v.layer.shadowOpacity = 1.0
    }
}

