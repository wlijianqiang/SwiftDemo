//
//  TJSFourViewController.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/5.
//  Copyright © 2017年 STV. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class TJSFourViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
 
    var tableView:UITableView?
    var dataArray:[String]?
    let cellID = "cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSubViews()
        
        //Alamofire 示例代码
        TJSNetHttpTool.shareInstance.getRequest(urlString: "https://api.500px.com/v1/photoss", params: nil, success: { (result) in
         
            let s = JSON(result)
    
            print("---错误信息:\(s["error"])---")
        }) { (error) in
            print(error)
        }
    }
    func addSubViews() {
        self.dataArray = ["1","2","3","4","5","test"]
        self.tableView = UITableView(frame:self.view.frame,style:UITableViewStyle.plain)
        self.tableView?.delegate = self
        self.tableView?.dataSource = self

        self.view.addSubview(self.tableView!)
        //注册cell
        self.tableView?.register(UITableViewCell.classForCoder(), forCellReuseIdentifier:cellID)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.dataArray?.count)!
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:String(cellID), for: indexPath)
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell.textLabel?.text = self.dataArray?[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.frame = CGRect(x:0, y:0, width:0, height:40)
        headerView.backgroundColor = UIColor.yellow
        return headerView
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        footerView.frame = CGRect(x:0, y:0, width:0, height:40)
        footerView.backgroundColor = UIColor.black
        return footerView

    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
       print("你选中了第\(indexPath.row)个cell")
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
