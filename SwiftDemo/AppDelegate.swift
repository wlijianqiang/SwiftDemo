//
//  AppDelegate.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/5.
//  Copyright © 2017年 STV. All rights reserved.
//

import UIKit
import XCGLogger

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
         //MARK:_创建window
        
        self.window = UIWindow(frame:UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.rootViewController = TJSTabBarViewController()
        self.window?.makeKeyAndVisible()
        //MARK:_设置全局tabbar的样式
        UITabBar.appearance().tintColor = UIColor.orange
        let log = XCGLogger.default
        log.setup(level: .debug, showLogIdentifier: true, showFunctionName: true, showThreadName: true, showLevel: true, showFileNames: true, showLineNumbers: true, showDate: true, writeToFile: "path/to/file", fileLevel: .debug)
        DLog(message: "TEST")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
}

/*
 自定义Log：定义Log的打印内容 获取所在的文件 #FILE 获取所在的方法 #FUNCTION 获取所在行 #LINE
 默认参数：当在方法中传参数时，可以传入默认参数，定义：file：String = #file，默认参数在外界传递参数的时候不会显示
 全局函数：在AppDelegate中定义全局函数：<T>表示泛型，传打印内容func DLog<T> (message: T,fileName:String = #file,funcName:String = #function,lineNum:Int = #line)
 DLog在Debug下 打印,在release下 不打印
 定义标记项 —>buildSettings—>搜索swift flag—>Debug -> -D DEBUG 做标记--------在项目中实现：#if DEBUG    #endif
 
 2：let file = (fileName as NSString).lastPathComponent;获取文件的扩展名，(fileName as NSString)将swift的字符串转为OC字符串，并调用OC的方法，关键字as，在截取字符串的时候也通常将swift的字符串转为OC字符串来进行截取
 3： print("\(file):\(funcName):\(lineNum):\("打印内容"):\(message)")：插值运算:插值运算"\()"来表示。
 
 */
func DLog<T>(message:T,
          fileName:String = #file,
          funcName:String = #function,
          lineNum:Int = #line){
    #if DEBUG
        let file = (fileName as NSString).lastPathComponent
        print("\(file):\(funcName):\(lineNum):\("打印内容"):\(message)")
    #endif
}
