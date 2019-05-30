//
//  ViewController.swift
//  14.3MapKit基本使用
//
//  Created by YZH on 2018/11/26.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    //创建一个地图
    var map : MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        map = MKMapView(frame: view.frame)
        view.addSubview(map)
        
        //地图类型
        /*
         case standard
         
         case satellite
         
         case hybrid
         */
        map.mapType = MKMapType.standard
        
        //设置地图的范围
        //MKCoordinateSpan:设置地图范围，（经度和纬度），1维度为111km
        let currentLocationSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        //定义地图区域和中心坐标
        let center = CLLocation(latitude: 22.61667, longitude: 114.06667)
        //定义位置
        let currenRegion = MKCoordinateRegion(center: center.coordinate, span: currentLocationSpan)
        //设置显示区域
        map.setRegion(currenRegion, animated: true)
        
        //创建一个大头针
        let anotation = MKPointAnnotation()
        //设置打头阵显示的位置
        anotation.coordinate = CLLocation(latitude: 22.61667, longitude: 114.06667).coordinate
        //设置大头针点击之后显示的标题
        anotation.title = "电影院"
        //设置大头针之后要显示的描述
        anotation.subtitle = "万达电影院"
        //添加大头针
        map.addAnnotation(anotation)
    }
}

