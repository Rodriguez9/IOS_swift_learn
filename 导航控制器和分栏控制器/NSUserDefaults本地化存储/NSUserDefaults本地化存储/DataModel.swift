//
//  DataModel.swift
//  NSUserDefaults本地化存储
//
//  Created by YZH on 2018/11/9.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class DataModel: NSObject {
    var userList = [UserInfo]()
    
    override init() {
        super.init()
        print("沙河文件路径\(DocunmentDirectory())")
        print("文件路径\(dataFilePath())")
    }
    
    //保存数据的方法
    func saveData(){
        let data = NSMutableData()
        //声明处理对象
        let archiver = NSKeyedArchiver(forWritingWith: data)
        //将userList以对应的关键字进行编码
        archiver.encode(userList,forKey: "userList")
        //结束编码
        archiver.finishEncoding()
        //数据写入
        data.write(toFile: dataFilePath(), atomically: true)
    }
    
    //读取数据
    func loadData(){
        //获取文件地址
        let path = self.dataFilePath()
        //创建文件管理器
        let defaultManager = FileManager()
        //判断文件是否存在
        if defaultManager.fileExists(atPath: path) {
            //读取文件
            let url = URL(fileURLWithPath: path)
            let data = try! Data(contentsOf: url)
            //解码
            let unarchiver = NSKeyedUnarchiver(forReadingWith: data)
            //通过归档设置的关键字还原userList
            userList = unarchiver.decodeObject(forKey: "userList") as! Array
        }
        
    }
    
    //获取沙河路径
    func DocunmentDirectory() -> String {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentDirectory = path.first!
        return documentDirectory
        
    }
    
    //获取数据文件地址
    func dataFilePath() -> String {
        return self.DocunmentDirectory().appendingFormat("/userList.plist")
    }
}
