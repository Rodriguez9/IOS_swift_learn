//
//  ViewController.swift
//  NSUserDefaults本地化存储
//
//  Created by YZH on 2018/11/9.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dataModel = DataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CreateData()
        let btn1 = UIButton(type: .custom)
        btn1.frame = CGRect(x: 100, y: 150, width: 150, height: 30)
        btn1.setTitle("保持", for: .normal)
        btn1.setTitleColor(.black, for: .normal)
        btn1.addTarget(self, action: #selector(save), for: .touchUpInside)
        
        let btn2 = UIButton(type: .custom)
        btn2.frame = CGRect(x: 100, y: 300, width: 150, height: 30)
        btn2.setTitle("读取", for: .normal)
        btn2.setTitleColor(.black, for: .normal)
        btn2.addTarget(self, action: #selector(load), for: .touchUpInside)
        self.view.addSubview(btn1)
        self.view.addSubview(btn2)
    }
    
    @objc func save(){
        dataModel.saveData()
    }
    
    @objc func load() {
        dataModel.loadData()
    }
    
    //创建模拟数据
    func CreateData() {
        dataModel.userList.append(UserInfo(name: "jack", phone: "12346767"))
        dataModel.userList.append(UserInfo(name: "fbnj", phone: "651561651"))
        dataModel.userList.append(UserInfo(name: "gnjf", phone: "78651116"))
        dataModel.userList.append(UserInfo(name: "jkndfvk", phone: "8445616"))
        dataModel.userList.append(UserInfo(name: "jdfdk", phone: "45454455"))
    }
}

