//
//  ViewController.swift
//  11.4.Swift-缩放手势
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
        v.frame = CGRect(x: 40, y: 100, width: 200, height: 200)
        v.backgroundColor = UIColor.blue
        
        let img = UIImageView.init(image: UIImage.init(named: "1.jpg"))
        v.addSubview(img)
        view.addSubview(v)
        v1 = v
        
        //创建一个缩放手势
        let pinchGesTure = UIPinchGestureRecognizer()
        pinchGesTure.addTarget(self, action: #selector(pinchClick(sender:)))
        view.addGestureRecognizer(pinchGesTure)
    }
    
    @objc func pinchClick(sender:UIPinchGestureRecognizer){
        //缩放比例在0-1之间
        let myScale = sender.scale
        //原始比例
        let scaleOffset : CGFloat = 1.0
        //如果myScale的比例大于1，图片在放大
        
        if myScale > 1 {
            v1?.transform = CGAffineTransform.init(scaleX: scaleOffset + myScale - 1, y: scaleOffset + myScale - 1)
        }else{
            v1?.transform = CGAffineTransform.init(scaleX: scaleOffset * myScale, y: scaleOffset * myScale)
        }
        
        
    }
}

