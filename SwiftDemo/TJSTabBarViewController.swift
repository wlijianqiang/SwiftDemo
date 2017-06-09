//
//  TJSTabBarViewController.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/5.
//  Copyright © 2017年 STV. All rights reserved.
//

import UIKit

class TJSTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK:_1:添加子控件
        //首页
        addChildViewController(TJSFirstViewController(),  title: "首页", imageName: "MainTabItemIcon_0")
        addChildViewController(TJSSecondViewController(), title: "咨询", imageName: "MainTabItemIcon_1")
        addChildViewController(TJSThirdViewController(),  title: "新闻", imageName: "MainTabItemIcon_2")
        addChildViewController(TJSFourViewController(),   title: "我的", imageName: "MainTabItemIcon_4")
    }

    private func addChildViewController(_ childController: UIViewController,title:String,imageName:String){
        //设置子控件tabBarItem的标题图片
        childController.title = title;
        childController.tabBarItem.image = UIImage(named:imageName)
        childController.tabBarItem.selectedImage = UIImage(named:imageName + "_highlighted")
        //添加子控件
        let childVC = UINavigationController(rootViewController: childController)
        addChildViewController(childVC)
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
