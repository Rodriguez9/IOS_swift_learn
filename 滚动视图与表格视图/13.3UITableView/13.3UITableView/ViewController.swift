//
//  ViewController.swift
//  13.3UITableView
//
//  Created by YZH on 2018/11/21.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
   
    let arr = ["jack","Mary","Amy"]
    
    static let cellID : String = "cellID"
    override func viewDidLoad() {
        super.viewDidLoad()
        let tableview = UITableView(frame: view.bounds, style: .plain)
        view.addSubview(tableview)
        //设置表格里的数据源
        tableview.dataSource = self
        tableview.delegate = self
        //注册可重用cell
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: ViewController.cellID)
    }
}

extension ViewController : UITableViewDataSource{
    
    //总共有多少cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    //每一个cell的数据
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ViewController.cellID, for: indexPath)
        cell.textLabel?.text = String.init(format:arr[indexPath.row])
        cell.imageView?.image = UIImage.init(named: "1.jpg")
        return cell
    }
    
    //有多少组cell
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let oned = one()
            self.present(oned, animated: true, completion: nil)
        case 2:
            let oned = two()
            self.present(oned, animated: true, completion: nil)
        default: break
            
        }
    }
}
