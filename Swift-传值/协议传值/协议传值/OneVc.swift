//
//  OneVc.swift
//  正向传值
//
//  Created by YZH on 2018/11/11.
//  Copyright © 2018年 YZH. All rights reserved.
//  通过改变two的tectStr属性实现传值

import UIKit



class OneVc: UIViewController,Work {
    func run(textStr: String) {
        self.message?.text = textStr
    }
    
    var textField1 : UITextField?
    //用来接收two返回的
    var twoString : String?
    var message : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel(frame: CGRect(x: 30, y: 30, width: 150, height: 30))
        label.text = "控制器A"
        label.textColor = UIColor.red
        
        var text = UITextField(frame: CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3, width: 150, height: 30))
        text.borderStyle = .bezel
        text.textColor = UIColor.red
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3+160, width: 150, height: 30)
        btn.backgroundColor = UIColor.blue
        btn.addTarget(self, action:#selector(btnClick), for: .touchUpInside)
        
        let labelreceive = UILabel()
        labelreceive.frame = CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3+320, width: 150, height: 30)
        labelreceive.text = "控制器B传来的"
        labelreceive.textColor = UIColor.black
        
        let msg = UILabel(frame: CGRect(x: view.frame.size.width * 0.2, y: view.frame.size.height * 0.3+482, width: 150, height: 30))
        msg.backgroundColor = UIColor.yellow
        msg.textColor = UIColor.red
        
        view.addSubview(label)
        view.addSubview(text)
        view.addSubview(btn)
        view.addSubview(labelreceive)
        view.addSubview(msg)
        
        textField1 = text
        message = msg
    }
    
  
    @objc func btnClick(){
        let two = TwoVc()
        two.delegate=self
        self.present(two, animated: true, completion: nil)
        
    }
   
    
}
