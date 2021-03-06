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
       // self.sortMethod()
       // self.enumTest()
       // self.classTest()
       // self.methondTest()
       // self.subscriptdTest()
       // self.inheritance()
       // self.initializationTest()
       // self.deinitializationTest()
       // self.automatic_reference_countingTest()
       // self.error_handling()
       // self.type_casting()
       // self.extensionsTest()
        self.access_control()
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
   
    //MARK:_枚举
    func enumTest(){
        //枚举语法 使用关键字 enum定义枚举 然后将其所有的定义内容 放在一个大括号（{}）中
        enum CompassPoint {
            case north
            case south,east,west
        }
        
        var directionToHead = CompassPoint.west
        directionToHead = .south
        
        directionToHead = .south
        switch directionToHead {
        case .north:
            print("Lots of planets have a north")
        case .south:
            print("Watch out for penguins")
        case .east:
            print("Where the sun rises")
        case .west:
            print("Where the skies are blue")
        default:
            print("Not a safe place for humans")
        }
        enum Barcode{
            case upc(Int,Int,Int,Int)
            case qrCode(String)
        }
        var productBarcode = Barcode.upc(8, 3455, 51226, 3)
        productBarcode = .qrCode("ABDSFNOGF")
    }
   
    //MARK:_类和结构体
    func classTest() {
        //类和结构体有着相似的语法 关键字为 class 和 struct
        struct Resolution {
            var width = 0
            var height = 0
        }
        
        class VideoMode{
            var resolution = Resolution()
            var interlaced = false
            var frameRate = 0.0
            var name:String?
        }
        //类与结构体实例
        let someResoltion = Resolution()
        let someVideoMode = VideoMode()
        
        //访问属性
        print("The width of someResolution is \(someResoltion.width)")
        print("The width of someResolution is \(someVideoMode.resolution.width)")
        let vga = Resolution(width: 640,height: 480)
        var cinema = vga
        cinema.width = 800
        
        //延迟存储属性：延迟存储属性的初始值在其第一次使用时才进行计算，可以通过在其声明钱标注lazy 修饰语来表示一个延迟存储器
        class DataImporter {
            var fileName = "data.text"
        }
        class DataManager {
            lazy var importer = DataImporter()
            var data = [String]()
        }
        let manager = DataManager()
        print("----\(manager)---")
        print("----\(manager.importer.fileName)----")
        //枚举定义 计算属性 其实际并不存储值，他们提供一个读取器和一个可选的设置器来间接得到和设置其他的属性和值
        struct Point {
            var x = 0.0, y = 0.0
        }
        struct Size {
            var width = 0.0, height = 0.0
        }
        //简写设置器(setter)声明  如果一个计算属性的设置器没有为将要被设置的值定义一个名字，那么他将被默认命名为 newValue
        
        struct Rect {
            var origin = Point()
            var size = Size()
            var center: Point{
                get {
                   let centerX = origin.x + (size.width / 2)
                   let centerY = origin.y + (size.height / 2)
                    return Point(x: centerX, y: centerY)
                }
                set(newCenter){
                    origin.x = newCenter.x - (size.width / 2)
                    origin.y = newCenter.y - (size.height / 2)
                }
            }
            
        }
        var square = Rect(origin: Point(x:0.0,y:0.0),size: Size(width: 10.0,height: 10.0))
        let initialSquareCenter = square.center
        square.center = Point(x: 15.0,y:15.0)
        print(initialSquareCenter)
        print("square.origin is now at (\(square.origin.x),\(square.origin.y))")
        //只读计算属性：一个有读取器但是没有设置器的计算属性就是所谓的只读计算属性。只读计算属性返回一个值，也可通过点语法访问，但不能被修改为另一个值（你必须用 var 关键字定义计算属性）
        struct Cuboid {
            var width = 0.0, height = 0.0, depth = 0.0
            var volume: Double {
                return width * height * depth
            }
        }
        let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
        print("the volume of fourByTwo is \(fourByFiveByTwo)")
  
        //属性观察者：会观察并对属性值的变化作出回应。当每一个属性的值被设置时，属性观察者都会被调用，即使这个值与该属性当前的值相同
        class StepCounter {
            var totalSteps: Int = 0 {
                willSet(newTotalSteps){
                    print("About to set totalSteps to \(newTotalSteps)")
                }
                didSet {
                    if totalSteps > oldValue {
                        print("Add \(totalSteps - oldValue) steps")
                    }
                }
            }
        }
        
        let stepCounter = StepCounter()
        stepCounter.totalSteps = 200
        stepCounter.totalSteps = 360
        
        //全局和局部变量
        //类型属性
        struct SomeStructure {
            static var storedTypeProperty = "Some value."
            static var computedTypeProperty: Int {
                return 1
            }
        }
        
        enum SomeEnumeration {
            static var storedTypeProperty = "Some value."
            static var computedTypeProperty:Int {
                return 6
            }
        }
        
        class SomeClass {
            static var storedTypeProperty = "Some value."
            static var computedTypeProperty: Int {
                return 27
            }
            class var overrideableComputedTypeProperty:Int {
                return 107
            }
        }
        //查询和设置类属性
        print(SomeStructure.storedTypeProperty)// prints "Some value."
        SomeStructure.storedTypeProperty = "Another value"
        print(SomeStructure.storedTypeProperty)// prints "Another value."
        print(SomeEnumeration.computedTypeProperty)// prints "6"
        print(SomeClass.computedTypeProperty)//prints "27"
   
        struct AudioChannel {
            static let thresholdLevel = 10
            static var maxInputLevelForAllChannels = 0
            var currentLevel: Int = 0 {
                didSet {
                    if currentLevel > AudioChannel.thresholdLevel{
                        currentLevel = AudioChannel.thresholdLevel
                    }
                    if currentLevel > AudioChannel.maxInputLevelForAllChannels{
                        AudioChannel.maxInputLevelForAllChannels = currentLevel
                    }
                }
            }
        }
        var leftChannel = AudioChannel()
        var rightChannel = AudioChannel()
        leftChannel.currentLevel = 7
        print(leftChannel.currentLevel)
        print(AudioChannel.maxInputLevelForAllChannels)
        
        rightChannel.currentLevel = 11
        print(rightChannel.currentLevel)
        print(AudioChannel.maxInputLevelForAllChannels)
    }
    
    //MARK:_方法
    func methondTest() {
        
        class Counter {
            var count = 0
            func increment() {
                count += 1
                print(count)
            }
            func increment(by amount: Int){
//                count += amount
                self.count += amount//self 属性
                print(count)
            }
            func reset() {
                count = 0
                print(count)
            }
        }
        let counter = Counter()
        counter.increment()
        counter.increment(by: 5)
        counter.reset()
        
        struct Point {
            var x = 0.0, y = 0.0
            func isToTheRightOf(x:Double)->Bool {
                return self.x > x
            }
        }
        //self 属性
        let somePoint = Point(x: 4.0, y: 5.0)
        if somePoint.isToTheRightOf(x: 1.0) {
            print("This point is to the right of the line where x == 1.0")
        }
        //在实例方法中修改值的类型: 结构体和枚举是值类型，默认情况下，值类型属性不能被自身的实例方法修改
        struct Points {
            var x = 0.0, y = 0.0
            mutating func moveByX(delTax: Double, y deltaY: Double){
                x += delTax
                y += deltaY
            }
        }
        var somePoints = Points(x: 1.0, y : 1.0)
        somePoints.moveByX(delTax: 2.0, y: 3.0)
        print("The point is now at(\(somePoints.x),\(somePoints.y))")
        
        let fixedPoint = Points(x: 3.0, y: 3.0)
       // fixedPoint.moveByX(delTax: 2.0, y: 3.0)// 你不能在常量结构体类型里调用异变方法，因为自身的属性不能被改变，就算他们是变量属性
      //在异变方法里指定自身：异变方法可以指定整个实例给隐士的self属性
        struct Pointt {
            var x = 0.0, y = 0.0
            mutating func moveBy(x deltaX: Double,Y deltaY: Double) {
                self = Pointt(x: x + deltaX, y: y + deltaY)
            }
        }
        var pointTest = Pointt(x: 2.0, y:3.0)
        print(pointTest.x)
    
        //枚举的异变方法可以设置隐士的 self 属性为相同枚举里的不同成员
        enum triStateSwitch {
            case off, low, high
            mutating func next(){
                switch self {
                case .off:
                    self = .low
                case .low :
                    self = .high
                case .high:
                    self = .off
                }
            }
        }
        var ovenLight = triStateSwitch.low
        ovenLight.next()// ovenLight is now equal to .high
        ovenLight.next()// ovenLight is now equal to .off
        
        //类型方法 ： 实例方法是特定类型实例中调用的方法。 同样可以定义在类型本身调用的方法。这类方法被称为类型方法 可通过在 func关键字前使用 static 关键字来明确一个类型方法，类同样可以使用 class 关键字来允许子类重写父类对类型方法的实现
        class SomeClass {
            class func someTypeMethod() {
                
            }
        }
        SomeClass.someTypeMethod()
        
        
        struct LevelTracker {
            static var highestUnlockedLovel = 1
            var currentLevel = 1
            
            static func unlock(_ level: Int){
                if level > highestUnlockedLovel { highestUnlockedLovel = level }
            }
            static func isUnlocked(_ level: Int)->Bool {
                return level <= highestUnlockedLovel
            }
            @discardableResult
            mutating func advance(to level: Int)-> Bool {
                if LevelTracker.isUnlocked(level) {
                    currentLevel = level
                    return true
                }else {
                    return false
                }
            }
        }
        class Player {
            var tracker  = LevelTracker()
            let playerName: String
            func completedLevel(level: Int) {
                LevelTracker.unlock(level + 1)
                tracker.advance(to: level + 1)
            }
            init(name: String) {
                playerName = name
            }
        }
        
        var  player = Player(name: "Argyrios")
        player.completedLevel(level: 1)
        print("highest unlocked level is now \(LevelTracker.highestUnlockedLovel)")
        
        player = Player(name: "Beto")
        if player.tracker.advance(to: 6) {
            print("player is now on level 6")
        }else {
            print("level 6 hsa not yet been unlocked")
        }
    }
   
    //MARK:_下标
    func subscriptdTest() {
        //下标脚本允许你通过在实例名后面的方括号内写一个或多个值对该类的实例进行查询。其语法类似于实例方法和计算属性。使用关键字 subscript 来定义下标，并且指定一个或多个输入形式参数和返回类型
        struct TimesTable {
            let multiplier: Int
            subscript(index: Int) ->Int {
                return multiplier * index
            }
        }
        let threeTimesTable = TimesTable(multiplier: 3)
        print("six times three is \(threeTimesTable[6])")
        
        struct Matrix {
            let rows: Int, columns: Int
            var grid: [Double]
            init(rows: Int, columns: Int) {
                self.rows = rows
                self.columns = columns
                grid = Array(repeating: 0.0, count: rows * columns)
            }
            func indexIsValid(row: Int,column: Int) -> Bool {
                return row >= 0 && row < rows && column >= 0 && column < columns
            }
            subscript(row: Int, column : Int) -> Double {
                get {
                    assert(indexIsValid(row: row, column: column), "Index out of range")//断言
                    return grid[(row * columns) + column]
                }
                set {
                    assert(indexIsValid(row: row, column: column), "Index out of range")
                    grid[(row * columns) + column] = newValue
                }
            }
        }
        
        var matrix = Matrix(rows: 2, columns: 2)
        matrix[0,1] = 1.5
        matrix[1,0] = 3.2
        print("--\(matrix)--")
      //  let someValue = matrix[2,2]//下标越界
    }
    
    //MARK:_继承
    func inheritance() {
        let someVehicle = Vehicle()
        someVehicle.currentSpeed = 2.34
        print("Vehice: \(someVehicle.description)")
        let bicycle = Bicycle()
        bicycle.hasBasket = true
        bicycle.currentSpeed = 15.0
        print("Bicycle: \(bicycle.description)")
        
        let tandem = Tandem()
        tandem.hasBasket = true
        tandem.currentNumberOfPassengers = 1
        tandem.currentSpeed = 22.0
        print("Tandem: \(tandem.description)")
        
        //重写 子类可以提供它自己的实例方法、类型方法、实例属性、类型属性或下标脚本的自定义实现。否则它将会从父累继承。要重写而不是继承的一个特征，需要在重写定义面前加上 override 关键字。这样做说明你打算提供一个重写而不是意外提供了一个相同定义。意外重写可能导致意想不到的行为，并且任何没有使用 override 关键字的重写都会在编译时呗诊断为错误。  override 关键字会执行 Swift编译器的检查你重写的类的父类（或者父类的父类）是否与之匹配的声明来供你重写。这个检查确保你重写的定义是正确的
        
        //访问父类的方法、属性和下标脚本 ：当你为子类提供了一个方法、属性或下标脚本时，有时使用现有的父类实现作为你重写的一部分是很有用的。例：你可以重新定义现有实现的行为，或者再现有继承的变量中存出一个修改过的值。 可使用 super 前缀访问父类的方法、属性或下表脚本 
        
        let train = Train()
        train.makeNoise()
        
        let car = Car()
        car.currentSpeed = 25.0
        car.gear = 3
        print("Car \(car.description)")
        
        //重写属性观察器
        let automatic = AutomaticCar()
        automatic.currentSpeed = 35.0
        print("AutomaticCar: \(automatic.description)")
        
        //阻止重写：可通过标记为终点来组织一个方法、属性或下标被重写。 在其关键字前边写 final 修饰符。 任何子类里重写终点方法等的尝试都会被报告为编译错误。在扩展中添加到类的方法、属性或下标脚本也可以在扩展的定义里被标记为终点。 可通过在类定义中在 class 关键字前面写 final 修饰符标记一整个类为终点。任何香葱终点创建子类的行为都会被报告一个编译时错误
        
    }
    
    //MARK:_初始化 使用init关键字来写
    func initializationTest() {
        
//        struct Fahrenheit {
//            var temperature: Double
//            init() {
//                temperature = 32.0
//            }
//        }
//        
//        var f = Fahrenheit()
//        print("The default temperature is \(f.temperature)° Fahrenheit")
        //此结构体定义了一个初始化器， init，没有形式参数，它的初始化储存温度的值为32.0
        
        
        //属性的默认值  可以在初始化器里为存储属性设置初始值。另外，指定一个默认属性值作为属性声明的一部分。当属性被定义的时候你可以通过为这个属性分配一个初始值来指定默认的属性值
        struct Fahrenheit {//通过提供 temperature 属性的默认值，上面的Fahrenheit 结构体写的更简单
            var temperature = 32.0
        }
        
        //初始化形式参数
        struct Celsius {
            var temperatureCelsius: Double
            init(fromFahrenheit fahrenheit: Double) {
                temperatureCelsius = (fahrenheit - 32.0) / 1.8
            }
            init(fromKelvin kelvin: Double) {
                temperatureCelsius = kelvin - 273.15
            }
        }
        
        let bolilingPointOfWater = Celsius(fromFahrenheit: 212.0)
        print(bolilingPointOfWater.temperatureCelsius)
        let freezingPointOfWater = Celsius(fromKelvin: 273.15)
        print(freezingPointOfWater.temperatureCelsius)
        
        
        //形式参数名和实际参数标签
        struct Color {
            let red, green, blue: Double
            
            init(red: Double, green: Double,blue: Double){
                self.red = red
                self.green = green
                self.blue = blue
            }
            init(white: Double) {
                red = white
                green = white
                blue = white
            }
        }
        let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
        let halfGray = Color(white: 0.5)
        //注意不使用外部名称是不能调用这些初始化器的。如果定义了外部参数名就必须用在初始化器里，省略的话会报一个编译时错误
       // let varyGreen = Color(0.0,1.0,0.0)
        
        //无实际参数标签的初始化器形式参数
        struct Celsiuss {
            var temperatureCelsius: Double
            init(fromFahrenheit fahrenheit: Double) {
                temperatureCelsius = (fahrenheit - 32.0) / 1.8
            }
            init(fromKelvin kelvin: Double) {
                temperatureCelsius = kelvin - 273.15
            }
            init(_ celsius: Double) {
                temperatureCelsius = celsius
            }
        }
        let bodyTemperature = Celsiuss(37.0)//调用初始化器 有着清楚的意图而不需要外部形式参数名。因此，把初始化器写为 init(_ celsius: Double)是合适的，它也就可以通过提供未命名的 Double 值被调用了。
        print(bodyTemperature)
        //可选属性类型
        class SurveyQuestion {
            var text: String
            var response: String?
            init(text: String){
                self.text = text
            }
            func ask() {
                print(text)
            }
        }
        let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
        cheeseQuestion.ask()
        cheeseQuestion.response = "Yes, I do like cheese"
        
        //在初始化中分配常量属性: 在初始化的任意时刻，都可以给常量属性赋值，只要它在初始化结束是设置了确定的值即可。一旦为常量属性被赋值，它就不能再被修改了。
        class SurveyQuestionn {
            let text: String
            var response: String?
            init(text: String) {
                self.text = text
            }
            func ask() {
                print(text)
            }
        }
        let beetsQuestion = SurveyQuestionn(text: "How about beets?")
        beetsQuestion.ask()
        beetsQuestion.response = "I also like beets. (But not with cheese.)"
        
        //默认初始化器: Swift为所有没有提供初始化器的结构体或类提供了一个默认的初始化器来给所有的属性提供了默认值。这个默认值的初始化器只是简单的创建了一个所有属性都有默认值的新实例
        class ShoppingListItem {
            var name: String?
            var quantity = 1
            var purchased = false
        }
        var item = ShoppingListItem()
        
        //结构体类型的成员初始化器:结构体类型中没有定义任何自定义初始化器，它会自动获得一个成员初始化器。不同于默认初始化器，结构体会接收成员初始化器即使它的存储属性没有默认值
        struct Size{
            var width = 0.0, height = 0.0//Size 结构体自动接收一个init(width:heigth:) 成员初始化器，你可以使用它来初始化一个新的Size 实例
        }
        let twoByTwo = Size(width: 2.0, height: 2.0)
        
        //值类型的初始化器委托
        struct Sizee {
            var width = 0.0,height = 0.0
        }
        struct Pointt {
            var x = 0.0, y = 0.0
        }
        
        struct Rect {
            var origin = Pointt()
            var size = Sizee()
            init() {}
            init(origin: Pointt,size: Sizee){
                self.origin = origin
                self.size = size
            }
            init(center: Pointt,size: Sizee) {
                let originX = center.x - (size.width / 2)
                let originY = center.y - (size.height / 2)
                self.init(origin:Pointt(x: originX, y: originY),size: size)
            }
        }
        let basiRect = Rect()
        
        let originRect = Rect(origin: Pointt(x: 2.0, y:2.0),size:Sizee(width: 5.0,height: 5.0))
        let centerRect = Rect(center: Pointt(x: 4.0, y: 4.0),size: Sizee(width: 3.0, height: 3.0))
        
        //初始化器的继承和重写：Swift不会默认继承父类的初始化器，这种机制防止父类的简单初始化器被一个更专用的子类继承并被用来创建一个没有完全或错误初始化的新实例的情况发生
        let vehiclee = Vehiclee()
        print("Vehiclee: \(vehiclee.description)")
        
        let bicyclee = Bicyclee()
        print("Bicycle: \(bicyclee.description)")
        
        //指定和便利初始化器的操作
        let nameMeat = Food(name: "Bacon")
        print(nameMeat.name)
        
        let oneMysteryItem = RecipeIngredient()
        let oneBacon = RecipeIngredient(name: "Bacon")
        let sixEggs = RecipeIngredient(name: "Eggs",quantity: 6)
        
        var breakfastList = [
        ShoppingListItemm(),
        ShoppingListItemm(name:"Bacons"),
        ShoppingListItemm(name: "Eggs", quantity: 6)
        ]
        
        breakfastList[0].name = "Orange juice"
        breakfastList[0].purchased = true
        for item in breakfastList {
            print(item.description)
        }
        
        //可失败初始化器：定义类、结构体或枚举初始化时可以失败在某些情况下会管大用。这个失败可能由以下几种方式触发，包括给初始化传入无效的形式参数值，或缺少某种外部所需的资源，又或是其他阻止初始化的情况
//        let wholeNumnber: Double = 12345.0
//        let pi = 3.1415926
//        if let valueMaintained = Int(exactly: wholeNumnber){
//            print("\(wholeNumnber) conversion to int maintains value")
//        }
//        let valueChanged = Int(exactly: pi)
        struct Animal {
            let species: String
            init?(species: String) {
                if species.isEmpty { return nil}
                self.species = species
            }
        }
        
        let someCreature = Animal(species: "Giraffe")
        
        if let giraffe = someCreature {
            print("An animal was initialized with a species of \(giraffe.species)")
        }
        
        let anonymousCreature = Animal(species: "")
        if anonymousCreature == nil {
            print("The anonymous creature could not be initialized")
        }
        
        //枚举的可失败初始化器
        enum TemperatureUnit {
            case Kelvin, Celsius, Fahrenheit
            init?(symbol: Character) {
                switch symbol {
                case "K":
                    self = .Kelvin
                 case "C":
                    self = .Celsius
                    case "F":
                    self = .Fahrenheit
                default:
                    return nil
                }
            }
        }
        
        let fahrenheitUnit = TemperatureUnit(symbol: "F")
        if fahrenheitUnit != nil {
            print("This is a defined temperature unit, so initialization succeeded")
        }
        
        let unknownUnit = TemperatureUnit(symbol: "X")
        if unknownUnit == nil {
            print("This is not a defined temperature unit, so initialization failed.")
        }
        
        //带有原始值枚举的可失败初始化器
        enum TemperatureUnitt: Character {
            case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
        }
        let fahrenheiUnitt = TemperatureUnitt(rawValue: "F")
        if fahrenheiUnitt != nil {
            print("This is a defined temperature unit, so initialization succeeded.")
        }
        let unknownUnitt = TemperatureUnitt(rawValue: "X")
        if unknownUnitt == nil {
            print("This is not a defined temperature unit, so initialization failed.")
        }
        
        //初始化失败的传递： 类、结构体或枚举的可失败初始化器可以横向委托到同一个类、结构体或枚举里的另一个可失败初始化器。类似地，子类的可失败初始化器可以向上委托到父类的可失败初始化器
        class Product {
            let name: String
            init?(name: String) {
                if name.isEmpty {return nil}
                self.name = name
            }
        }
        
        class CartItem: Product {
            let quantity: Int
            init?(name: String, quantity: Int){
                if quantity < 1 { return nil }
                self.quantity = quantity
                super.init(name: name)
            }
        }
        if let twoSocks = CartItem(name: "sock",quantity: 2) {
            print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
        }
        if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
            print("Item: \(zeroShirts.name),quantity: \(zeroShirts.quantity)")
        }else {
            print("Unable to initialize zero shirts")
        }
        
        if let oneUnnamed = CartItem(name: "", quantity: 1) {
            print("Item: \(oneUnnamed.name), quantity:\(oneUnnamed.quantity)")
        }else {
            print("Unable to initialize one unnamed product")
        }
        //重写可失败初始化器：可在子类里重写父类的可失败初始化器
        class Document {
            var name: String?
            init() {}
            
            init?(name: String){
                self.name = name
                if name.isEmpty { return nil}
            }
        }
        
        class AutomaticallyNamedDocument: Document {
            override init() {
                super.init()
                self.name = "[Untitled]"
            }
            override init(name: String) {
                super.init()
                if name.isEmpty {
                    self.name = "[Untitled]"
                }else {
                    self.name = name
                }
            }
        }
        class UntitledDocument: Document {
            override init() {
                super.init(name: "[Untitled]")!
            }
        }
        
        //可失败初始化器 init! :通常我们通过关键字后添加问号（init?）的方式来定义一个可失败初始化器 以创建一个合适类型的可选项实例。另外，也可使用可失败初始化器创建一个隐士展开具有合适类型的可选项实例。 通过在 init 后面添加惊叹号( init!)
        
        //必要初始化器 ：在初始化器前添加 required 修饰符来表明所有该类的子类都必须实现该初始化类
        class SomeClasss {
            required init() {
                
            }
        }
        //子类重写父类的必要初始化器时，必须在子类的初始化器前同样添加 required 修饰符以却白当其它类继承该子类时，该初始化器同为必要初始化器。在重写父类的必要初始化器时，不需要添加 override 修饰符
        class SomeSubclasss: SomeClasss {
            required init( ) {
            
            }
        }
        //通过闭包和函数来设置属性的默认值： 如果某个存储属性的默认值需要自定义或设置，可使用闭包或全局函数来为属性提供默认值。当这个属性属于的实例初始化时，闭包或函数就会被调用，并且它的返回值就会自耦为属性的默认值   这种闭包函数通常会创建一个和属性相同的临时值，处理这个值以表示初始的状态，并且把这个临时值作为属性的默认值
       
        
        struct Chessboard {
            let boardColors: [Bool] = {
                var temporaryBoard = [Bool]()
                var isBlack = false
                for i in 1...8 {
                    for j in 1...8 {
                        temporaryBoard.append(isBlack)
                        isBlack = !isBlack
                    }
                    isBlack = !isBlack
                }
                return temporaryBoard
            }()
            
            func squareIsBlackAt(row: Int, column: Int) -> Bool {
                return boardColors[(row * 8) + column]
            }
        }
        
        let board = Chessboard()
        print(board.squareIsBlackAt(row: 0, column: 1))
        print(board.squareIsBlackAt(row: 7, column: 7))
        
    }
    
    //MARK:_反初始化
    func deinitializationTest() {
        //反初始化： 在实例被释放的时候，反初始化器就会被立即被调用， 使用 deinit 关键字来写反初始化器，如同写初始化器用init 关键字一样 
        class Bank {
            static var coinsInBack = 10_000
            static func distribute(coins numberOfCoinsRequested: Int) -> Int {
                let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBack)
                coinsInBack -= numberOfCoinsToVend
                return numberOfCoinsToVend
            }
            static func receive(coins: Int) {
                coinsInBack += coins
            }
        }
        
        class Player {
            var coinsInPurse: Int
            init(coins: Int) {
                coinsInPurse = Bank.distribute(coins: coins)
            }
            func win(coins: Int) {
                coinsInPurse += Bank.distribute(coins: coins)
            }
            deinit {
                Bank.receive(coins: coinsInPurse)
            }
        }
        
        var playerOne: Player? = Player(coins: 100)
        print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")
        // Prints "A new player has joined the game with 100 coins"
        print("There are now \(Bank.coinsInBack) coins left in the bank")
        // Prints "There are now 9900 coins left in the bank"
        
        playerOne?.win(coins: 2_000)
        print("PlayerOne won 2000 coins & now has \(playerOne?.coinsInPurse) coins")
        // Prints "PlayerOne won 2000 coins & now has 2100 coins"
        print("The bank now only has \(Bank.coinsInBack) coins left")
        // Prints "The bank now only has 7900 coins left"
        
        playerOne = nil
        print("PlayOne has left the game")
        print("The bank now has \(Bank.coinsInBack) coins")
        // prints "The bank now has 10000 coins"
    }
    
    //MARK:_自动引用计数器
    func automatic_reference_countingTest() {
    //注意：引用计数只应用于类的实例。结构体和枚举是值类型，不是引用类型，没有通过引用存储和传递
        class Person {
            let name: String // 定义名为 name 的存储常量属性
            init(name: String) {//初始化器
                self.name = name
                print("\(name) is being initialized")
            }
            deinit {//反初始化器 在类的实例被销毁时调用
                print("\(name) is being deinitialized")
            }
        }
        var reference1: Person? // 定义了三个Person？ 类型的变量
        var reference2: Person?
        var reference3: Person?
        
        //创建新的Person 实例并将它赋值给三个变量中的一个
        reference1 = Person(name: "John Appleseed")//Person 实例已经赋值给了 reference1 变量，现在就有了一个从 reference1 到该实例的强引用。因为至少有一个强引用，ARC可以确保Person 一直保持在内存中不被销毁
        reference2 = reference1
        reference3 = reference1 //现在Person实例就有了三个强引用了
        
        reference1 = nil
        reference2 = nil //变量赋值 nil 断开两个强引用，只留下了一个强引用
        
        reference3 = nil //第三个强引用呗断开时 ARC 销毁Person实例
        
        //类实例之间的循环强引用：解决循环强引用问题，通过定义类之间的关系为弱引用（weak）或无主引用（unowned）来代替强引用
        class Persons {
            let name: String
            init(name: String) {
                self.name = name
            }
            var apartment: Apartment?
            deinit {
                print("\(name) is being deinitialized")
            }
        }
        class Apartment {
            let unit: String
            init(unit: String) {
                self.unit = unit
            }
            var tenant: Persons?
            deinit {
                print("Apartment \(unit) is being deinitaialized")
            }
        }
        
        var john: Persons?
        var unit4A: Apartment?
        
        //循环引用
        john = Persons(name: "John Appleseed")
        unit4A = Apartment(unit: "4A")
        john!.apartment = unit4A
        unit4A!.tenant = john//感叹号是用来展开和访问可选变量 john 和 unit4A 里的实例的
        
        
        john = nil
        unit4A = nil//两个变量设为 nil 后 Persons 和 Apartment 实例之间的强引用关系保留了下来并且不会被断开
    
        //解决实例之间的循环强引用
         //Swift提供了两种办法来解决使用类的属性时所遇到的循环强引用问题： 弱引用（weak reference）和无主引用（unowned reference）
    
        //1.弱引用
        class Apartmentt {
            let unit: String
            init(unit: String) {
                self.unit = unit
            }
            weak var tenant: Persons?
            deinit {
                print("Apartmentt \(unit) is being deinitialized")
            }
        }//两个变量（ john 和 unit4A ）之间的强引用和关联创建得与上次相同
        
        //2.无主引用：与弱引用类似，无主引用不会牢牢保持住引用的实例。无主引用假定是永远有值得。因此 无主引用总是被定义为非可选类型。 在声明属性或变量时，在前面加上关键字 unowned 来表示这是一个无主引用
        class Customer {
            let name: String
            var card: CreditCard?
            init(name: String) {
                self.name = name
            }
            deinit {
                print("\(name) is being deinitialized")
            }
        }
        
        class CreditCard {
            let number: UInt64
            unowned let customer: Customer
            init(number: UInt64, customer: Customer) {
                self.number = number
                self.customer = customer
            }
            deinit {
                print("Card #\(number) is being deinitialized")
            }
        }
        
        var johnn: Customer?
        johnn = Customer(name: "Johnn Appleseed")
        johnn!.card = CreditCard(number: 123_567_9012_3456, customer: johnn!)
        johnn = nil
        
        
        //3：无主引用和隐式展开的可选属性：两个属性都必须有值，并且初始化完成后永远不允许为 nil 此种场景 需要一个类使用无主属性，而另一个类使用隐式展开的可选属性
        class Country {
            let name: String
            var capitalCity: City!
            init(name: String, capitalName: String) {
                self.name = name
                self.capitalCity = City(name: capitalName, country: self)
            }
        }
        class City {
            let name: String
            unowned let country: Country
            init(name: String, country: Country) {
                self.name = name
                self.country = country
            }
        }
        var country = Country(name: "Canada",capitalName: "Ottawa")
        print("\(country.name)’s capital city is called \(country.capitalCity.name)")
        
        //闭包的循环强引用 闭包捕获列表 （closuer capture list）
        
        
    }
   
    //MARK:_错误处理
    func error_handling() {
        //Swift 枚举是典型的为一组相关错误条件创建的完美适配类型，关联值还允许错误通讯携带额外的信息
        enum VendingMachineError: Error {
            case invalidSelection
            case insufficientFunds(coinsNeeded: Int)
            case outOfStock
        }
        
       // throw VendingMachineError.insufficientFunds(coinsNeeded: 5) throw 跑出一个错误允许你明确某些意外的事情发生了并且正常的执行流不能下去
     
        //使用抛出函数传递错误
        func canThrowErrors() throws -> String{//为明确一个函数或者方法可以抛出错误，你要在它的声明中的形式参数后边写上 throws 关键字。使用 throws 标记的函数叫做抛出函数。若它明确了一个返回类型，那么throws关键字要在返回箭头（->）之前。
           return "everyone"
        }
        
        struct Item {
            var price: Int
            var count: Int
        }
        
        class VendingMachine {
            var inventory = [
                "Candy Bar": Item(price: 12, count: 7),
                "Chips":Item(price: 10, count: 4),
                "Pretzels":Item(price: 7, count: 11)
            ]
            var coinsDeposited = 0
            
            func vend(itemNamed name: String) throws {//使用gurad语句来提前退出并抛出错误，如果购买零食的条件不符合的话，因为throw语句立即传送程序控制，所以只有条件都达到，物品才会售出
                guard let item = inventory[name] else {
                    throw VendingMachineError.invalidSelection
                }
                
                guard item.count > 0 else {
                    throw VendingMachineError.outOfStock
                }
                
                guard item.price <= coinsDeposited else {
                    throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
                }
                
                coinsDeposited -= item.price
                var newItem = item
                newItem.count -= 1
                inventory[name] = newItem
                print("Dispensing \(name)")
            }
        }
        
        let favoriteSnacks = [
            "Alice":"Chips",
            "Bob":"Licorice",
            "Eve":"Pretzels",
        ]
        func buyFavoriteSnak(person: String, vendingMachine: VendingMachine) throws {
            let snackName = favoriteSnacks[person] ?? "Candy Bar"
            try vendingMachine.vend(itemNamed: snackName)
        }
        //上述例子中。buyFavoriteSnack(person:vendingMachine:)函数查找给定人的最爱零食并且尝试通过调用 vend(itemNamed:)方法来购买它们。由于 vend(itemName:) 方法会抛出错误，调用的时候要在前边用try 关键字。
        
        //使用 Do-Catch 处理错误：使用do-catch 语句来通过运行一段代码处理错误。如果do分句中抛出了一个错误，它就会与 catch 分句匹配，以确定其中之一可以处理错误。
        var vendingMachine = VendingMachine()
        vendingMachine.coinsDeposited = 8
        do {
           // try buyFavoriteSnak(person: "Alice", vendingMachine: vendingMachine)
        } catch VendingMachineError.invalidSelection {
            print("Invalid Selection.")
        } catch VendingMachineError.outOfStock {
            print("Out of Stock")
        } catch VendingMachineError.insufficientFunds(coinsNeeded: 5) {
            print("Insufficient funds. Please an additional coins.")
        }//此例中 函数buyFavoriteSnack(person:vendingMachine:) 在try表达式中被调用，因为它会抛出错误，如果抛出错误，执行会立即切换到 catch 分局，它决定是否传递来继续。如果没有错误抛出，do语句中剩下的语句将会被执行。
        
        //转换错误为可选项：使用 try?通过将错误转换为可选项来处理一个错误。如果一个错误在 try?表达式中抛出，则表达式的值为 nil
        func someThrowingFunction() throws -> Int {
           return 1
        }
        
        let x = try? someThrowingFunction()
        
        let y:Int?
        do {
            y = try someThrowingFunction()
        } catch {
            y = nil
        }
        
//        func fetchData() -> Data? {
//            if let data = try? fetchDataDisk() { return data }
//            if let data = try? fetchDataFromServer() { return data }
//            return nil
//        }
        //取消错误传递
//        let photo = try! loadImage("./Resources/John Appleseed.jpg")
        //指定清理操作
        
//        func processFile(filename: String) throws {
//            if exists(filename) {
//                let file = open(filename)
//                defer {
//                    close(file)
//                }
//                while let line = try file.readline()  {
//                    
//                }
//            }
//        }
    }
    //MARK:_类型转换
    func type_casting() {
      //类型转换可以判断实例的类型，也可以将该实例在其所在的类层次中视为父类或子类的实例
        
        //为类型转换定义类层次
        class MediaItem {
            var name: String
            init(name: String) {
                self.name = name
            }
        }
        class Movie: MediaItem {
            var director: String
            init(name: String,director: String) {
                self.director = director
                super.init(name: name)
            }
        }
        class Song: MediaItem {
            var artist: String
            init(name: String,artist: String) {
                self.artist = artist
                super.init(name: name)
            }
        }
        
        let library = [
            Movie(name: "Casablanca", director: "Michaael Curtiz"),
            Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
            Movie(name: "Citizen Kane", director: "Orson Welles"),
            Song(name: "The One And Only", artist: "Chesney Hawkes"),
            Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
        ]//"library"的类型被推断为[MediaItem]
        /*
         事实上 library 储存的项目在后台依旧是 Movie 和 Song 实例。总之，如果你遍历这个数组的内容，你取出的项目将会是 MediaItem 类型而非 Movie 或 Song 类型。为了使用他们原生的类型，你需要检查他们的类型或将他们向下转换为不同的类型，如下所述。
         */
        
        //类型检查： 使用类型检查操作符 （is）来检查一个实例是否属于一个特定的子类。如果实例是该子类类型，类型检查操作符返回 true，否则返回 false
        var movieCount = 0
        var songCount = 0
        
        for item in library {
            if item is Movie {
                movieCount += 1
            }else if item is Song {
                songCount += 1
            }
        }
        print("Media library contains \(movieCount) movies and \(songCount) songs")
   //向下类型转换: 某个类类型的常量或变量可能实际上在后台引用自一个子类的实例 可尝试使用类型转换操作符 （as？或 as！）将它向下类型转换至其子类类型
        for item in library {
            if let movie = item as? Movie {
                print("Movie: '\(movie.name)',dir. \(movie.director)")
            }else if let song = item as? Song {
                print("Song: '\(song.name)', by \(song.artist)")
            }
        }
        
     //Any 和 AnyObject 的类型转换 AngObject 可以表示任何类类型的实例  Any 可以表示任何类型，包括函数类型
        
        var things = [Any]()
        
        things.append(0)
        things.append(0.0)
        things.append(42)
        things.append(3.1415926)
        things.append("hello")
        things.append((3.0, 5.0))
        things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
        things.append({ (name: String) -> String in "Hello, \(name)"})
        
        for thing in things {
            switch thing {
            case 0 as Int:
                print("zero as an Int")
            case 0 as Double:
                print("zero as a Double")
            case let someInt as Int:
                print("an integer value of \(someInt)")
            case let someDouble as Double where someDouble > 0:
                print("a positive double value of \(someDouble)")
            case is Double:
                print("some other double value that I don't want to print")
            case let someString as String:
                print("a string value of \"\(someString)\"")
            case let (x, y) as (Double, Double):
                print("an (x, y) point at \(x), \(y)")
            case let movie as Movie:
                print("a movie called '\(movie.name)', dir. \(movie.director)")
            case let stringConverter as (String) -> String:
                print(stringConverter("Michael"))

            default:
                print("something else")
            }
        }
        let optionalNumber: Int? = 3
        things.append(optionalNumber)
        things.append(optionalNumber as Any)
    }
   
    //MARK:_扩展
    func extensionsTest() {//为现有类、结构体、枚举类型、或协议添加了新功能。也包括为无访问权限的源代码扩展类型的能力，Swift的扩展没有名字

    }
    
    //MARK:_访问控制
    func access_control() {//访问控制限制其他源文件和模块对你的代码的访问
     /*访问级别
        Open 访问和public访问 允许实体被定义模块中的任意源文件访问，同样可以被另一模块的源文件通过导入该定义模块来访问。在指定框架的公共接口时，通常使用open和public访问。open 是访问最高的访问级别 限制最少
         open 访问仅适用于类和类成员，它与 public访问区别如下：
         public 访问，或任何更严格的访问级别的类，只能在其定义模块中被继承
         public 访问，或任何跟严格的访问级别的类成员，只能被其定义模块的子类重写
         open 类可以在其定义模块中被继承，也可以在任何导入定义模块的其他模块中被继承
         open 类成员可以被其定义模块的子类重写，也可以被导入期定义模块的任何模块重写。
         
         Internal 访问 允许实体被定义模块中的任意源文件访问，但不能被该模块之外的任何源文件访问。通常定义应用程序或是框架的内部结构时使用。
         File-private 访问 将实体的使用限制于封装声明中。当一些细节尽在单独的声明中使用时，使用 private 访问隐藏特定功能的实现细节 访问级别最低 限制最多
        */
        
        struct TrackedString {
            private(set) var numberOfEdits = 0
            var value: String = ""{
                didSet {
                    numberOfEdits += 1
                }
            }
        }
        var stringToEdit = TrackedString()
        stringToEdit.value = "This string will be tracked."
        stringToEdit.value += "This edit will increment numberOfEdits."
        stringToEdit.value += "So will this one."
        print("The number of edits is \(stringToEdit.numberOfEdits)")
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
