//
//  Vehiclee.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/20.
//  Copyright © 2017年 STV. All rights reserved.
//

import Foundation
class Vehiclee {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}

class Bicyclee: Vehiclee {
    override init() {//子类Bicyclee定义了一个自定义初始化器 init() 这个初始化器和Bicycle额的父类的指定初始化器相匹配，所以Bicyclee 中的指定初始化器需要带上 override 修饰符
        super.init()
        numberOfWheels = 3
    }
}

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name,quantity: 1)
    }
}

class ShoppingListItemm: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? "✔" : "✘"
        return output
    }
}
