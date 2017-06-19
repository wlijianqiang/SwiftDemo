//
//  Bicycle.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/19.
//  Copyright © 2017年 STV. All rights reserved.
//

import Foundation
import UIKit
//Vehicle 子类
class Bicycle: Vehicle {
    var hasBasket = false
    
}

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
    
}

class Train: Vehicle {
    override func makeNoise() {//重写方法
        print("Choo Choo")
    }
}

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + "in gear \(gear)"
    }
}

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

