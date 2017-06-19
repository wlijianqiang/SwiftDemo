//
//  Vehicle.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/19.
//  Copyright © 2017年 STV. All rights reserved.
//

import Foundation
import UIKit
//定义一个基类
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        
    }
}
