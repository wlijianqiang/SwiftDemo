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
       // self.TypeSet()
       // self.ControlFlow()
       // self.Founction()
        self.sortMethod()
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
        //数组
        var someInts = [Int]()
        print("somrInts is of type [Int] with \(someInts.count) items." )
        someInts.append(2)
        print(someInts)
        //默认值创建数组 可以传给初始化器对应类型的默认值（叫做repeating）和新数组元素的数量（叫做count）
        var threeDoubles = Array(repeating: 0.0, count: 3)
        
        threeDoubles = [1.1,2.2,3.3,4.4]
        print(threeDoubles)
        //通过连接两个数组来创建爱数组
        var anotherThreeDoubles = Array(repeating:2.5,count:3)
        var sixDoubles = threeDoubles + anotherThreeDoubles
        print(sixDoubles)
        //数组字面量创建数组
        var shoppingList:[String] = ["Eggs","Milk"]
        print(shoppingList)
        //访问修改数组
        print("the shopping list contains \(shoppingList.count) items.")
        if shoppingList.isEmpty {
            print("The shopping list is empty")
        }else{
            print("The shopping list is not empty.")
        }
        shoppingList.append("Jack")
        
        shoppingList += ["LiLei","HanMeiMei","WangWei","hehe"]
        var firstItem = shoppingList[1]//下标取值
        shoppingList[1] = "what"
        print(shoppingList)
        shoppingList[4...6] = ["Banana","Apples"]//使用下标脚本语法来改变一个范围的值，及时替换与范围长度不同的集合也可以
        shoppingList.insert("ChunGuang", at: 0)
        shoppingList.remove(at: 3)
        
        for item in shoppingList{
            print(item)
        }
        for (index,value) in shoppingList.enumerated(){//enumerated() 方法返回数组中每一个元素的元组，包含这个元素的索引和值
            print("Item\(index + 1): \(value)")
        }
        
        //合集
        var letters = Set<Character>()
        letters.insert("a")
        letters = ["q","w","e","r","q","e"]
        print(letters)
        
        if letters.contains("q") {
            print("有此元素")
        }else{
            print("无此元素")
        }
        /*基本合集操作:
         intersection(_:)创建只包含两个合集共有值得新合集
         symmetricDifference(_:)创建只包含两个合集各自有的非共有值得新合集
         union(_:)创建一个包含两个合集所有制的新合集
         sbutracting(_:)创建一个两个合集当中不包含某个合集值得新合集
         */
        let oddDigits: Set = [1,3,5,7,9]
        let eventDigits: Set = [0,2,4,6,8]
        let singleDegitPrimeNumbers: Set = [2,3,5,7]
        
        let s =  oddDigits.union(eventDigits).sorted()
        print(s)
       let ss = oddDigits.intersection(eventDigits).sorted()
        print(ss)
       let sss = oddDigits.subtracting(singleDegitPrimeNumbers).sorted()
        print(sss)
        let ssss = oddDigits.symmetricDifference(singleDegitPrimeNumbers).sorted()
        print(ssss)
        
        /*合集成员关系和相等性
         == 判断两个合集是否包含相同的值
         isSubset(of:) 确定一个合集的所有值是被某合集包含
         isSuperset(of:) 确定一个合集是否包含某个合集的所有值
         isStrictSubSet(of:) or isStrictSuperset(of:) 确定是个合集是否为某一个合集的子集或者超集，但并不相等
        isDisjoint(with:)判断两个合集是否拥有完全不同的值
         */
        let houseAnimals: Set = ["🐶", "🐱"]
        let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
        let cityAnimals: Set = ["🐦", "🐭"]
        print(houseAnimals.isSubset(of: farmAnimals))
        print(farmAnimals.isSuperset(of: houseAnimals))
        print(farmAnimals.isDisjoint(with: cityAnimals))
        
        //字典
        var namesOfIntegers = [Int: String]()
        var airports: [String : String] = ["yyz":"toronto Pearson","dub":"dublin"]
        
        if airports.isEmpty {
            print("ss")
        }
        airports["yyz"] = "weirughivjkc"
        print(airports)
        let oldValue = airports.updateValue("dfghdgndg", forKey: "dub")
        print(airports)
      //  airports.removeValue(forKey: "dub")
      //  print(airports)
        
        for menu in airports{
            print("--\(menu)--")
        }
        let airportCodes = [String](airports.keys)
        print(airportCodes)
        let airportNames = [String](airports.values)
        print(airportNames)
    }
    //MARK:_控制流
    func ControlFlow(){
        //For-in 循环
        let names = ["Anna", "Alex", "Brian", "Jack"]
        
        for name in names {
            print("Hello, \(name)!")
        }
        let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
        for (animalName, legCount) in numberOfLegs {
            print("\(animalName)s have \(legCount) legs")
        }
        
        for index in 1...5{
            print("\(index) times 5 is \(index * 5)")
        }
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power{
            answer *= base
        }
        print(answer)
        let minutes = 60
        for tickMark in 0..<minutes{
            print(tickMark)
        }
        let minuteInterval = 5//stride(from:to:by:)函数来跳过不想要的标记
        for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
            print(tickMark)
        }
        
        let someCharacter: Character = "z"
        switch someCharacter {
        case "a":
            print("The first letter of the alphabet")
        case "z":
            print("The last letter of the alphabet")
        default:
            print("Some other character")
        }
        
        //元组
        let somePoint = (1, 1)
        switch somePoint {
        case (0, 0):
            print("(0, 0) is at the origin")
        case (_, 0):
            print("(\(somePoint.0), 0) is on the x-axis")
        case (0, _):
            print("(0, \(somePoint.1)) is on the y-axis")
        case (-2...2, -2...2):
            print("(\(somePoint.0), \(somePoint.1)) is inside the box")
        default:
            print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
        }
        
        let anotherPoint = (2,0)
        switch anotherPoint {
        case (let x,0):
            print("on the x-axis with an x value of \(x)")
        case (0,let y):
            print("on the y-axis with a y value of\(y)")
        case let (x,y):
            print("somewhere else at(\(x),\(y))")
        }
        /*Continue: 告诉循环停止正在做的事情并且再次从头开始循环的下一次遍历
         Break: 
         Fallthrough 关键字只是使代码执行直接移动到下一个情况
         */
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is "
        
        switch integerToDescribe {
        case  2,3,5,7,11,13,17,19:
            description += "a prime number,and also"
            fallthrough
        default:
            description += " an inteher."
        }
        print(description)
        
        //提前退出 guard语句  类似if语句，基于布尔值表达式来执行语句。
        greet(person: ["name" : "John"])
        greet(person: ["name" : "John","location": "Cupertino"])
        
        //检查API的可用性
        if #available(iOS 10, macOS 10.12,*){//函数体只在iOS 10及以上版本才会执行；对于macOS平台，只有在macOS 10.12及以上版本才会运行。最后一个实际参数，* ，它需求并表明在其他所有平台，if 函数体执行你在目标里明确的最小部属
            print("Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS")
        }else{
            print("Fall back to earlier iOS and macOS APIs")

        }
    }
    func greet(person: [String: String]){
        guard let name = person["name"]else{
            return
        }
        print("Hello\(name)!")
        guard let location = person["location"] else {
          print("I hope the weather is nice near you.")
            return
        }
        print("I hope the weather is nice in \(location).")
    }
   //MARK:_函数
    func Founction() {
        
        func green(person: String)->String{//定义一个输入形式参数---- 一个叫做person的String类型值，并返回一个String类型
            let greeting = "Hello, " + person + "!"
            return greeting
        }
        print(green(person: "Anna"))
        
        //函数的形式参数和返回值
        //无形式参数的函数：函数没有要求必须输入一个参数，这里有一个没有输入形式参数的函数，无论何时它被调用永远会返回相同的String信息
        func sayHelloWorld()->String{
            return "hello,world"
        }
        print(sayHelloWorld())// prints "hello,world"
        
        //多形式参数的函数：函数可以输入多个形式参数，可以写在函数后边的圆括号内，用逗号隔开
        func greeet(person: String,alreadyGreeeted:Bool)-> String{
            if alreadyGreeeted {
                return person + "haha"
            }else {
                return person + "hehe"
            }
        }
        print(greeet(person: "wo", alreadyGreeeted: true))
        //无返回值的函数
        func greet(person: String) {
            print("Hello, \(person)!")
        }
        greet(person: "Dave")
        
        //多返回值函数
        func minMax(array:[Int])->(min: Int,max:Int){
            var currentMin = array[0]
            var currentMax = array[0]
            for value in array[1..<array.count]{
                if value < currentMin {
                    currentMin = value
                }else if value > currentMax{
                    currentMax = value
                }
            }
            return (currentMin,currentMax)
        }
        
        let bounds = minMax(array: [7,8,9,343,45,-12])
        print("min is \(bounds.min) and max is \(bounds.max)")
        
        
        //可选元组返回类型： 如果元组在函数的返回类型中有可能“没有值”，你可以用一个可选元组返回类型来说明整个元组的可能是nil 写法是在可选元组类型的圆括号后边添加一个问号（？）例如（int，int）？或者（String，Int，Bool）？
        func minMaxs(array:[Int])->(min: Int,max:Int)?{
            if array.isEmpty {return nil}
            var currentMin = array[0]
            var currentMax = array[0]
            for value in array[1..<array.count]{
                if value < currentMin {
                    currentMin = value
                } else if value > currentMax {
                    currentMax = value
                }
            }
            return (currentMin,currentMax)
        }
        if let boundss = minMaxs(array: []) {
            print("min is \(boundss.min) and max is \(boundss.max)")
        }
        //函数的实际参数标签和形式参数名
        
    }
    //MARK:_闭包
    func sortMethod() {
        //sorted 方法
        //sorted(by:) 会根据你提供的排序闭包将已知类型的数组的值进行排序，一旦它排序完成，sorted(by:)方法会返回与原数组类型大小完全相同的一个新数组，该数组的元素是已经排好序的。原始数组不会被 sorted(by:)方法修改
       let names = ["Chris","Alex","Ewa","Barry","Daniella"]
        print(names.sorted())//print:["Alex", "Barry", "Chris", "Daniella", "Ewa"]
        func backward(_ s1: String,_ s2: String)->Bool{
            return s1 > s2
        }
        var reversedNames = names.sorted(by: backward)
        print(reversedNames)
        //也可直接将形式参数类型和返回类型都卸载花括号内
        reversedNames = names.sorted(by: {(s1:String,s2:String)->Bool in return s1 > s2})
        //从语境中推断类型 因排序闭包为实际参数来传递给函数，故Swift能推断它的形式参数类型和返回类型
        reversedNames = names.sorted(by: {s1,s2 in return s1 > s2})
        //从单表达式闭包隐士返回： 单表达式闭包能够通过从他们的声明中删除return 关键字来隐士返回它们单个表达式的结果
        reversedNames = names.sorted(by: {s1,s2 in s1 > s2})
        
        //简写的实际参数名 Swift 自动对行内闭包提供简写实际参数名，你也可以通过$0,$1,$2等名字来引用闭包的实际参数值
        reversedNames = names.sorted(by: {$0 > $1})
        //运算符函数 实际上还有一种更简短的方式来撰写上述闭包表达式。Swift 的 String 类型定义了关于大于号（ >）的特定字符串实现，让其作为一个有两个 String 类型形式参数的函数并返回一个 Bool 类型的值。这正好与  sorted(by:) 方法的第二个形式参数需要的函数相匹配。因此，你能简单地传递一个大于号，并且 Swift 将推断你想使用大于号特殊字符串函数实现：
        reversedNames = names.sorted(by: >)
        print(reversedNames)
        //尾随闭包：需要将一个很长的闭包表达式作为函数最后一个实际参数传递给函数，使用尾随闭包将增强函数的可读性，尾随闭包是一个被书写在函数形式参数的括号外面(后面)的闭包表达式
        reversedNames = names.sorted(){ $0 > $1}
        
        let digitNames = [0:"Zero",1:"One",2:"Two",3:"Three",4:"Four",5:"Five",6:"Six",7:"Seven",8:"Eight",9:"Nine"]
        let numbers = [16,58,510]
        //Swift的Array类型中有一个以闭包表达式为唯一的实际参数的map(_:)方法，数组中每一个元素调用一次该闭包，并且返回该元素所映射的值，具体的映射方式和返回值的类型有闭包来指定
       
        let strings = numbers.map{
            (number)->String in
            var number = number
            var output = ""
            repeat{
                output = digitNames[number % 10]! + output
                number /= 10
            }while number > 0
            return output
        }
        print("====\(strings)===")
        
        //捕获值：一个闭包能够从上下文捕获已被定义的常量和变量。即使这些常量和变量的原作用域已经不存在，闭包扔能够再起函数体内引用和修改这些值
        
        /*这里有个命名为makeIncrement的函数例子，其中包含一个名叫incrementer的一个内嵌函数。这个内嵌函数incrementer() 函数能在它的上下文捕获两个值，running 和 amount 在捕获这些值后，通过makeIncrement 将incrementer 作为一个闭包返回，每一次调用 incrementer时，将以amount作为增量来增加 runningTotal*/
        func makeUncrementer(forIncrement amount: Int)-> () -> Int{
            var runningTotal = 0
            func incrementer() -> Int{
                runningTotal += amount

                return runningTotal
            }
            
            return incrementer
        }
        
        let incrementByTen = makeUncrementer(forIncrement: 10)
        print(incrementByTen)
        //闭包是引用类型   上例中 incrementer 和 incrementByten 是常量，但是这些常量指向的闭包仍可以增加已捕获的变量runningTotal 的值。这是因为函数和闭包都是引用类型
        
        //逃逸闭包 当闭包作为一个实际参数传递给一个函数时，我们就说这个闭包逃逸了
        var completionHandlers: [()->Void] = []
        func someFunctionWithEscapingClosure(completionHandler: @escaping ()-> Void){
            completionHandlers.append(completionHandler)
        }//此函数 接收一个闭包作为实际参数并添加它到声明在函数外部的数组里。如果不标记函数的形式参数为@escaping，则会遇到编译错误 让闭包@escaping 意味着必须在闭包中显示地引用 self 
        func someFunctionWithNonescapingClosure(closure: ()->Void) {
            closure()
        }
        class SomeClass {
            var x = 10
            func doSomething() {
//                someFunctionWithEscapingClosure { self.x = 100 }
//                someFunctionWithNonescapingClosure { x = 200 }
            }
        }
        let instance = SomeClass()
        instance.doSomething()
        print(instance.x)
        
        //自动闭包：一种自动创建的用来把作为实际参数传递荷藕函数的表达式打包的闭包。它不接受任何实际参数，并且当它被调用时，它会返回内部打包的表达式的值。其好处是通过普通表达式代替显式闭包而使你省略包围函数形式参数的括号
        var cunstomersInLine = ["Chris","Alex","Ewa","Barry","Daniella"]
        print(cunstomersInLine.count)
        
        let customerProvider = {cunstomersInLine.remove(at: 0)}
        print(cunstomersInLine.count)
        
        print("Now serving \(customerProvider())!")
        print(customerProvider)//尽管customersINLine 数组的第一个元素以闭包的一部分被移除了，但任务并没有执行直到闭包被实际调用。如果闭包永远不被调用，那么闭包里边的表达式就永远不会求值，注意customerProvider 的类型不是String 而是 ()->String  一个不接受实际参数并且返回一个字符串的函数
        func serve(customer customerProvider: () -> String){
            print("Now serving \(customerProvider())!!")
        }
        serve(customer: { cunstomersInLine.remove(at: 0)})
        
        
        func servers(customer customerProvider: @autoclosure () -> String){
            print("Now serving \(customerProvider())!")
        }
        servers(customer: cunstomersInLine.remove(at: 0))
        
        var customerProviders: [()->String] = []
        func collectCustomerProviders (_ cistomerProvider: @autoclosure @escaping () -> String){
            customerProviders.append(customerProvider)
        }
        collectCustomerProviders(cunstomersInLine.remove(at: 0))
        collectCustomerProviders(cunstomersInLine.remove(at: 0))
        
        print("Collected \(customerProviders.count) closures.")
        
        for customerProvider in customerProviders{
            print("Now serving \(customerProvider()) !!!")
        }
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
