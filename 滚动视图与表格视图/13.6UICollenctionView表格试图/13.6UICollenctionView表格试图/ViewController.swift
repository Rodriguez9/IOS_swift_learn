//
//  ViewController.swift
//  13.6UICollenctionView表格试图
//
//  Created by YZH on 2018/11/22.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    static let cellId = "cellID"
    override func viewDidLoad() {
        super.viewDidLoad()
        //创建一个布局
        let layout = UICollectionViewFlowLayout.init()
        //设置item的大小
        layout.itemSize = CGSize(width: 50, height: 120)
        //设置item中的间距
        layout.minimumInteritemSpacing = 5
        //设置每行间距
        layout.minimumLineSpacing = 5
        //1.创建collectionView表格试图
        let collection = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        collection.backgroundColor = UIColor.white
        collection.dataSource = self
        view.addSubview(collection)
        //注册collectionView
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: ViewController.cellId)
    }
}
extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ViewController.cellId, for: indexPath)
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    
}
