//
//  ViewController.swift
//  11.5Swift-旋转手势
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
        
        //创建一个旋转手势
        let rotation = UIRotationGestureRecognizer()
        //添加一个旋转手势
        rotation.addTarget(self, action: #selector(rotationClick(sender:)))
        view.addGestureRecognizer(rotation)
    }
    
    @objc func rotationClick(sender:UIRotationGestureRecognizer){
        //拿到原始的一个度数
        let netRotation : CGFloat = 1.0
        //旋转的度数
        let rotation : CGFloat = sender.rotation
        
        //改变图片旋转
        v1?.transform = CGAffineTransform.init(rotationAngle: netRotation+rotation)
        //状态结束后，保存数据
        if sender.state == UIGestureRecognizerState.ended {
            print(netRotation + rotation)
        }
    }
    
}

