//
//  BasicContentViewController.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/12.
//  Copyright © 2017年 STV. All rights reserved.
//

import UIKit

class BasicContentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //self.test()
        //self.Basicperator()
        //self.AboutString()
        self.TypeSet()
    }

    //MARK:_基础内容
    func test(){
      //声明常量和变量
        let x = 10
        var y = 20
        let q = 20,w = 12,e = 1
        y = 30
        print(x,y,q,w,e)
        //类型标注
        var welcomeMessage : String
        var red,green,blue:Double
        red = 1.1
        green = 1.2
        blue = 1.4
        welcomeMessage = "Hello"
        print(welcomeMessage,red,green,blue)
        
        //常量和变量几乎可以用任何字符命名
        let 你好 = "hello"
        let  😆😆 = "哈哈";print(你好,😆😆)

        //整数范围
        let minValue = UInt8.min //最小值是 0 值得类型是 UInt8
        let maxValue = UInt8.max //最大值是 255 值得类型是 UInt8
        print(minValue,maxValue)
        //int  在32位平台上， Int 的长度和 Int32 相同。 在64位平台上， Int 的长度和 Int64 相同
        
        //Uint 无符号整数类型 在32位平台上， UInt 长度和 UInt32 长度相同。 在64位平台上， UInt 长度和 UInt64 长度相同
        
        //浮点型 Double代表 64 位的浮点数。Float 代表 32 位的浮点数 注意：Double 有至少 15 位数字的精度，而 Float 的精度只有 6 位。具体使用哪种浮点类型取决于你代码需要处理的值范围。在两种类型都可以的情况下，推荐使用 Double 类型
        
        //类型安全和类型推断 Swift 是一门类型安全的语言。类型安全的语言可以让你清楚地知道代码可以处理的值的类型。如果你的一部分代码期望获得 String ，你就不能错误的传给它一个 Int 。
        
        /*
         数值型字面量
         十进制数，没有前缀
         二进制数，前缀0b
         八进制数， 前缀0o
         十六进制数，前缀 0x
         例： 下列都是字面量十进制值为 17
         */
        let decimalInteger = 17
        let binaryInteger = 0b10001
        let octalInteger = 0o21
        let hexadecimalInteger = 0x11
        print(decimalInteger,binaryInteger,octalInteger,hexadecimalInteger)
        
        //类别名称：可以为已经存在的类型定义了一个新的可选名字，用typealias关键字定义类别名
        typealias AudioSample = UInt16
        var maxAmplitudeFound = AudioSample.min //AudioSample 就是 UInt16 的别名
        
        print(maxAmplitudeFound)
        
        //布尔值 true false
        
        //元组 把多个值合并成单一的复合型的值。元组内的值可以是任何类型，也可以不必是同一类型
        let http404Error = (404,"Not Found")
        
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        print("The status message is \(statusMessage)")
        //分解元组时 如果只需要使用其中一部分数据，不需要的数据可以用下划线(_)代替
        let (justTheStatusCode,_) = http404Error
        print("The status code is \(justTheStatusCode)")
        
       //错误处理 ......
        
       //断言和强制先决条件
        let age = -3
//        assert(age >= 0,"age is 3")
        
//        if age > 10 {
//            print("age is > 10")
//        }else if age > 0{
//            print("age is > 0")
//        }else{
//            assertionFailure("A person's age can't be less than zero.")
//        }
    }
    
    //MARK:_基本运算符
    func Basicperator() {
        //赋值运算符
        let b = 10
        var a = 5
        a = b
        print(a,b)
        let (x,y) = (1,2)
        print(x,y)
        //算术运算符 加法运算符支持String的拼接
        let s = "hello" + "world"
        print(s)
        //余数运算符 a%b
        let q = 9%4
        print(q)
        
        //一元加减号运算符
        let three = 3
        let minsThree = -three
        let plusThree = minsThree
        print(minsThree,plusThree)
        
        
        let minusSix = -6
        let alsoMinusSix = +minusSix
        print(minusSix,alsoMinusSix)
        
        //组合复制符号
        var aa = 2
        aa += 2
        print(aa)
        
        //比较运算符 支持所有c的标准比较运算符
        
        //三元条件运算符
        let contentHeight = 40
        let hasHeader = false
        let rowHeight = contentHeight + (hasHeader ? 50 : 20)
        print(rowHeight)
        
        //合并空值运算符
        let defaultColorName = "red"
        var userDefinedColorName:String?
        var colorNameTouse = userDefinedColorName ?? defaultColorName
        print(colorNameTouse)
        
        //闭区间运算符
        for index in 1...5{
            print("\(index) times 5 is \(index * 5)")
        }
        //半开区间运算符
        let names = ["23","2334","343","jack"]
        let count = names.count
        for i in 0..<count{
            print("Person \(i + 1) is called \(names[i])")
        }
        //逻辑运算符  与 或 非
        
        //显示括号
    }
    //MARK:_字符串和字符
    func AboutString() {
      let someString = "Some string literal value"
    print(someString)
        //连接字符串和字符
        let string1 = "hello"
        let string2 = "there"
        var welcome = string1 + string2
        print(welcome)
        
        var instruction = "look over"
        instruction += string2
        print(instruction)
        instruction.append(string2)
        print(instruction)
        
        
        let multiplier = 3
        let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
        print(message)
        //字符串字面量中的特殊字符 转义特殊字符 \0 空字符 \\反斜杠 \t水平制表符 \n换行符 \r回车符 \"双引号 \'单引号
        let test = "this \" is test \"-test"
        print(test)
        let sparklingHeart = "\u{1F496}"
        print(sparklingHeart)
        
        //字符统计
        let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
        print("unnusualMenagerie is \(unusualMenagerie.characters.count) characters")
        //访问和修改字符串
        //字符串索引
        let greeting = "Guten Tag!"
        print(greeting[greeting.startIndex])//G
        print(greeting[greeting.index(before: greeting.endIndex)])
        let index = greeting.index(greeting.startIndex, offsetBy: 7)
        print(greeting[index])
        
        //插入和删除
        var welcomes = "hello"
        welcomes.insert("!", at: welcomes.endIndex)
        print(welcomes)
        welcomes.insert(contentsOf: " there".characters, at: welcomes.index(before: welcomes.endIndex))
        print(welcomes)
        welcomes.remove(at: welcomes.index(before: welcomes.endIndex))
        print(welcomes)
        let range = welcomes.index(welcomes.endIndex, offsetBy: -6)..<welcomes.endIndex
        print(range)
        welcomes.removeSubrange(range)
        print(welcomes)
        //字符串和字符相等性
        let quotation = "We're a lot alike, you and I."
        let sameQuotation = "We're a lot alike, you and I."
        if quotation == sameQuotation {
            print("These two strings are considered equal")
        }
        //前缀和后缀相等性 hasPrefix(_:) hasSuffix(_:)
        
        
    }
    //MARK:_集合类型 swift提供了三种主要的集合类型：数组、合集、字典
    func TypeSet() {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
