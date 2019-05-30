//
//  LoginViewController.swift
//  网络解析
//
//  Created by YZH on 2018/11/29.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "首页"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(_ sender: UIButton) {
        if let userName = username.text,let passWord = password.text,!userName.isEmpty,!passWord.isEmpty
        {
            APPNetUtil.login(phone: userName, password: passWord, response: { (success, result) in
                if success {
                    print("succeed")
                }else{
                    print("fail")
                }
            })
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
