//
//  ViewController.swift
//  11.2Swift-滑动手势
//
//  Created by YZH on 2018/11/19.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var v1 : UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
        let v = UIView()
        v.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        v.backgroundColor = UIColor.black
        view.addSubview(v)
        v1 = v
        let swipeGesture = UISwipeGestureRecognizer()
        swipeGesture.addTarget(self, action: #selector(swipe(sender:)))
        //如果需要左边滑动，那么需要改为left，默认为right
        swipeGesture.direction = UISwipeGestureRecognizerDirection.left
        v1?.addGestureRecognizer(swipeGesture)
    }
    @objc func swipe(sender:UISwipeGestureRecognizer){
        var offset : CGFloat = 0
        if sender.direction == UISwipeGestureRecognizerDirection.right {
            offset += 80
            //transform：改变形状或位置
            v1?.transform = CGAffineTransform.init(translationX: offset, y: 0)
            print(offset)
        }
        else if sender.direction == UISwipeGestureRecognizerDirection.left {
            offset -= 80
            //transform：改变形状或位置
            v1?.transform = CGAffineTransform.init(translationX: offset, y: 0)
            print(offset)
        }
        
    }
}

