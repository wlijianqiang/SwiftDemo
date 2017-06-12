//
//  TJSFirstViewController.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/5.
//  Copyright © 2017年 STV. All rights reserved.
//

import UIKit

class TJSFirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.hexStringToColor(hexString: "989898")
        self.addSubViews()
    }

    private func addSubViews (){
        let btn = UIButton(type:.custom)
        btn.frame = CGRect(x:30,y:80,width:100,height:50)
        btn.backgroundColor = UIColor.orange
        btn.setTitle("Click", for: .normal)
        
        btn.addTarget(self, action: #selector( buttonAction(_:)), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    
    func buttonAction(_ btn:UIButton){
       // self.navigationController?.pushViewController(ViewController(), animated: true)
        /*swift调用oc文件：
         1.桥接文件:
         当你在工程中创建一个OC 类时 系统会自动创建一个名为SwiftProject-Bridging-Header.h的桥头文件  然后把相应的OC import到这个类中即可
         2. Objective-C Generated Interface Header Name文件
            这个文件是混编时，系统生成的Swift文件对应的Objective-C的头文件，具体可以在Targets-->Build Settings-->Swift Compiler - General-->Objective-C Generated Interface Header Name进行配置，默认文件名是工程名-Swift.h，一般不做改动。
         
         */
//        self.navigationController?.pushViewController(TestViewController(), animated: true)
        self.navigationController?.pushViewController(BasicContentViewController(), animated: true)
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
