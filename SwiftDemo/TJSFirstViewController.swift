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
        self.navigationController?.pushViewController(ViewController(), animated: true)
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
