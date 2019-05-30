//
//  TwoVc.swift
//  正向传值
//
//  Created by YZH on 2018/11/11.
//  Copyright © 2018年 YZH. All rights reserved.


import UIKit

class TwoVc: UIViewController {
    //重点
    var tectStr : String?
    var textField :UITextField?
    var oneVc : OneVc?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        let label = UILabel(frame: CGRect(x: 30, y: 30, width: 150, height: 30))
        label.text = "控制器B"
        label.textColor = UIColor.red
        
        let text = UITextField(frame: CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3, width: 150, height: 30))
        text.borderStyle = .bezel
        text.textColor = UIColor.red
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3+160, width: 150, height: 30)
        btn.setTitle("发送消息给控制器A", for:.normal)
        btn.backgroundColor = UIColor.blue
        btn.addTarget(self, action:#selector(btnClick), for: .touchUpInside)
        
        let labelreceive = UILabel()
        labelreceive.frame = CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3+320, width: 150, height: 30)
        labelreceive.text = "控制器B传来的"
        labelreceive.textColor = UIColor.black
        
        let msg = UILabel(frame: CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3+482, width: 150, height: 30))
        msg.backgroundColor = UIColor.yellow
        msg.textColor = UIColor.red
        msg.text = tectStr
        
        view.addSubview(label)
        view.addSubview(text)
        view.addSubview(btn)
        view.addSubview(labelreceive)
        view.addSubview(msg)
        
        textField = text
    }
    
    
    @objc func btnClick(){
        self.dismiss(animated: true){
            //self.oneVc?.twoString = self.textField?.text
            self.oneVc?.message?.text = self.textField?.text
        }
    }
}


