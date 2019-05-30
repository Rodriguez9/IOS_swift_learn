//
//  ViewController.swift
//  UIView动画
//
//  Created by YZH on 2018/11/14.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var v1 : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let v = UIView()
        v.frame = CGRect(x: 50, y: 100, width: 200, height: 200)
        v.backgroundColor = UIColor.red
        view.addSubview(v)
        v1 = v
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 5.0, animations: {
            self.v1?.frame = CGRect(x: 50, y: 100, width: 100, height: 100)
            self.v1?.backgroundColor = UIColor.blue
        }) { (value) in
            self.v1?.layer.cornerRadius = (self.v1?.frame.size.width)!/2.0
            self.v1?.layer.masksToBounds =  true
        }
    }


}

