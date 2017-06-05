//
//  TJSFourViewController.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/5.
//  Copyright © 2017年 STV. All rights reserved.
//

import UIKit

class TJSFourViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
 //   @available(iOS 2.0, *)
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }

   
    var tableView:UITableView?
    var dataArray:[String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.addSubViews()
    }

    func addSubViews() {
        self.dataArray = ["1","2","3","4","5","6"]
        self.tableView = UITableView(frame:self.view.frame,style:UITableViewStyle.plain)
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.view.addSubview(self.tableView!)
        
        //貌似swift 中无法使用
        self.tableView?.register(UITableViewCell.classForCoder(), forCellReuseIdentifier:"cell")
        NSStringFromClass(UITableViewCell.classForCoder())
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.dataArray?.count)!
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let identifier:String = "swiftCell"
//        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
//        if (cell == nil) {
//            cell = UITableViewCell(style:UITableViewCellStyle.default,reuseIdentifier:identifier)
//        }
//        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
//        cell?.textLabel?.text = self.dataArray?[indexPath.row]
//        return cell!
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell.textLabel?.text = self.dataArray?[indexPath.row]
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       print("你选中了\(indexPath.row)个cell")
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
