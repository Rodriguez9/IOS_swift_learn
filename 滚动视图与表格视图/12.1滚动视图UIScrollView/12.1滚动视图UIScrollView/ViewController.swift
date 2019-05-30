//
//  ViewController.swift
//  12.1滚动视图UIScrollView
//
//  Created by YZH on 2018/11/21.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let scroll = UIScrollView()
        scroll.frame = self.view.frame
        for i in 0...4 {
            let v = UIView()
            v.frame = CGRect(x: CGFloat(i) * self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
            v.backgroundColor = UIColor(red: CGFloat(arc4random()%256) / 255.0, green: CGFloat(arc4random()%256) / 255.0, blue: CGFloat(arc4random()%256) / 255.0, alpha: 0.6)
            scroll.addSubview(v)
        }
        //设置srcoll的contentSize：scrollView的一个滚动范围
        //注意：如果不设置scrollView的滚动范围，那么ScrollView是不能滚动的
        scroll.contentSize = CGSize(width: 4.0 * view.frame.width, height: view.frame.height)
        //添加scrollView到控制器
        view.addSubview(scroll)
        //开启分页效果
        scroll.isPagingEnabled = true
        //隐藏导航栏
        scroll.showsHorizontalScrollIndicator = true
        //改变导航条颜色
        scroll.indicatorStyle = .black
        //弹簧效果
        scroll.bounces = false
        //设置代理
        scroll.delegate = self
    }
}

//
extension ViewController{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView)
    }
}
