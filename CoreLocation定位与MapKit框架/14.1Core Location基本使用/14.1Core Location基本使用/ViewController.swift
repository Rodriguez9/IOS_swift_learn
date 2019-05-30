//
//  ViewController.swift
//  14.1Core Location基本使用
//
//  Created by YZH on 2018/11/25.
//  Copyright © 2018年 YZH. All rights reserved.
//

import UIKit
import CoreLocation
class ViewController: UIViewController,CLLocationManagerDelegate {
    //创建一个位置管理者
    var mgr = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
       //创建一个位置管理者
        /*
         requestWhenInUseAuthorization():无论前台还是后台都可以访问
         requestAlwaysAuthorization():在前台可以访问用户的位置
         */
        mgr.requestWhenInUseAuthorization()
        mgr.requestAlwaysAuthorization()
        
        //开始定位
        mgr.startUpdatingLocation()
        //结束定位
        mgr.stopUpdatingLocation()
        //设置代理
        mgr.delegate = self
        //设置定位精准度
        /*
         public let kCLLocationAccuracyBestForNavigation: CLLocationAccuracy：导航的精准度最精准
         public let kCLLocationAccuracyBest: CLLocationAccuracy默认
         public let kCLLocationAccuracyNearestTenMeters: CLLocationAccuracy10米
         public let kCLLocationAccuracyHundredMeters: CLLocationAccuracy100米
         public let kCLLocationAccuracyKilometer: CLLocationAccuracy千米
         public let kCLLocationAccuracyThreeKilometers: CLLocationAccuracy3千米
         */
        mgr.desiredAccuracy = kCLLocationAccuracyBest
    }

    //代理方法
    //开始定位时调用
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("用户位置：\(locations)\n")
        //获取用户经纬度
        //1.判断是否有位置
        guard let lastLocation = locations.last else{
            return
        }
        //如果有位置，获取位置信息
        //获取用户的经纬度
        let coor = lastLocation.coordinate
        //latitude:纬度
        //longitude:经度
        print("纬度\(coor.latitude) 经度\(coor.longitude)")
        
        //2.获取用户所在的海拔
        let alt = lastLocation.altitude
        print("海拔\(alt)")
        
        //3.获取水平精准度(位置的误差)和垂直精准度(海拔误差)
        let h = lastLocation.horizontalAccuracy
        let v = lastLocation.verticalAccuracy
        print("水平精准度\(h) 垂直精准度\(v)")
        
        //4.获取当前运动方向 注意：如果是负数,表示不可用
        let course = lastLocation.course
        print("运动方向:\(course)")
        
        //5.获取当前的速度
        let speed = lastLocation.speed
        print("速度\(speed)")
    }
    
    //用户定位状态发生改变时会掉用这个方法
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedAlways:
            print("总是授权")
        case .authorizedWhenInUse:
            print("前台正在访问用户位置")
        case .notDetermined:
            print("用户没有点击确定")
        case .denied:
            print("用户拒绝访问")
        case .restricted:
            print("系统原因")
        default:
            print("......")
        }
    }

}

