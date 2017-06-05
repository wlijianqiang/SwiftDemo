//
//  ViewController.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/5.
//  Copyright © 2017年 STV. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    var wswitch:UISwitch!;
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.addUIButton();
        //self.addUILabel();
        //self.addUITextField();
        //self.addUITextView()
        //self.addUISwitch()
        //self.addUISegmentedControl()
        //self.addUIImageView()
        self.addProgressView()
    }

    func addUIButton() {
        print("test!");
        let button:UIButton = UIButton(type:.custom);
        button.frame = CGRect(x:10,y:50,width:100,height:100);
        button.titleLabel?.lineBreakMode = .byTruncatingTail;//省略尾部文字
        button.titleLabel?.lineBreakMode = .byCharWrapping;//自动换行（按字符拆分）
        button.setTitle("普通状态的\n文字有点长", for:.normal);
        button.setTitle("触摸状态", for: .highlighted);
        button.setTitle("禁用状态", for:.disabled) //禁用状态下的文字
       
        button.setTitleColor(UIColor.gray, for: .normal);
        button.setTitleColor(UIColor.red, for: .highlighted);
        button.setTitleColor(UIColor.black, for: .disabled);
        
        
        button.setTitleShadowColor(UIColor.gray, for: .normal);
        button.setTitleShadowColor(UIColor.red, for: .highlighted);
        button.setTitleShadowColor(UIColor.black, for: .disabled);
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18);
        button.backgroundColor = UIColor.black;
        
        button.addTarget(self, action:#selector(tappend(_:)), for: .touchUpInside);
        
        
        
        self.view.addSubview(button);
        
    }
    
    func tappend(_ button:UIButton) {
        print("tapped");
    }

    func addUILabel() {
        let label:UILabel = UILabel(frame:CGRect(x:10,y:20,width:300,height:100));
        label.text = "UILabel 测试";
        label.textColor = UIColor.red//白色文字
        label.backgroundColor = UIColor.lightGray//黑色背景
        label.textAlignment = .right//文字右对齐
        label.shadowColor = UIColor.gray//灰色阴影
        label.shadowOffset = CGSize(width:3.5,height:1.5)//阴影的偏移量
        label.font = UIFont(name:"Zapfino", size:20)
        label.lineBreakMode = .byCharWrapping
        label.adjustsFontSizeToFitWidth = true //文字超出标签宽度时，自动调整文字大小，使其不被截断
        label.numberOfLines = 2;//显示两行文字
        self.view.addSubview(label)
        
        //富文本设置
        let attributeString = NSMutableAttributedString(string:"NSMutableAttributedString test");
        //从文本0开始6个字符字体HelveticaNeue-Bold,16号
        attributeString.addAttribute(NSFontAttributeName,
                                     value: UIFont(name: "HelveticaNeue-Bold", size:16)!,
                                     range: NSMakeRange(0, 6))
        //设置字体颜色
        attributeString.addAttribute(NSForegroundColorAttributeName,
                                     value: UIColor.blue,
                                     range: NSMakeRange(0, 3))
        //设置文字背景颜色
        attributeString.addAttribute(NSBackgroundColorAttributeName,
                                     value: UIColor.green,
                                     range: NSMakeRange(3, 3))
        label.attributedText = attributeString;
    }
    //FIXME:_addUITextField
    func addUITextField(){
        let textField = UITextField(frame:CGRect(x:10,y:60,width:200,height:30));
        textField.borderStyle = UITextBorderStyle.roundedRect//设置边框样式为圆角矩形
        textField.placeholder = "请输入用户名"
        textField.adjustsFontSizeToFitWidth = true //当文字超出文本框宽度时，自动调整文字大小
        textField.minimumFontSize = 12//最小可缩小的字号
        textField.textAlignment = .center//水平对提
        textField.contentVerticalAlignment = .top//垂直对齐
        //背景图片设置
        textField.borderStyle = .none//去除边框样式
        textField.background = UIImage(named:"background1")
        textField.clearButtonMode = .whileEditing//清除按钮出现的时机
        textField.keyboardType = UIKeyboardType.default;
        textField.returnKeyType = UIReturnKeyType.done//设置键盘return键的样式
        textField.delegate = self
        self.view.addSubview(textField);
    }
    //MARK:_UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()//收键盘
        print(textField.text ?? true);
        return true
    }
    //MARK:_ endEditing
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    func addUITextView() {
        let textView = UITextView(frame:CGRect(x:10,y:20,width:200,height:100))
        textView.layer.borderWidth = 2
        textView.layer.borderColor = UIColor.gray.cgColor
        textView.isEditable = true
        textView.font = UIFont(name:"HelveticaNeue-Bold", size:20)
//        textView.isSelectable = false
//        textView.isSecureTextEntry = false
        textView.dataDetectorTypes = UIDataDetectorTypes.phoneNumber//给文字中的电话号码自动加链接
        self.view.addSubview(textView)
        
        let mail = UIMenuItem(title:"邮件",action:#selector(ViewController.onMail))
        let weixin = UIMenuItem(title:"微信",action:#selector(ViewController.onWeiXin))
        let menu = UIMenuController()
        menu.menuItems = [mail,weixin]
    }
    
    func onMail() {
        print("mail")
    }
    
    func onWeiXin(){
       print("weixin")
    }
    
    func addUISwitch() {
         wswitch = UISwitch()
        wswitch.center = CGPoint(x:100,y:50)//设置位置  开关大小无法设置
        wswitch.isOn = true;
        wswitch.addTarget(self, action: #selector(switchDidChange), for:.valueChanged)
        self.view.addSubview(wswitch)
    }
    func switchDidChange(){
        print(wswitch.isOn)
    }
    func addUISegmentedControl(){
        //除文字外还可以是图片
        let items = ["选项一","选项二","选项三"] as [Any]
        let segmented = UISegmentedControl(items:items)
        segmented.center = self.view.center
        segmented.selectedSegmentIndex = 2
        segmented.addTarget(self, action: #selector(ViewController.segmentDidchange(_:)), for: .valueChanged)
        self.view.addSubview(segmented)
        
        segmented.insertSegment(withTitle: "新增选项", at: 1, animated: true)
        //segmented.insertSegment(with: <#T##UIImage?#>, at: <#T##Int#>, animated: <#T##Bool#>)//添加图片选项
       //segmented.removeSegment(at: <#T##Int#>, animated: <#T##Bool#>)//移除选项
        segmented.tintColor = UIColor.red
        //segmented.setTitle(<#T##title: String?##String?#>, forSegmentAt: <#T##Int#>)//修改选项文字
        segmented.setContentOffset(CGSize(width:10,height:7), forSegmentAt: 1)//修改选项内容偏移位置
    }
    func segmentDidchange(_ segmented:UISegmentedControl){
        //获得选项的索引
        print(segmented.selectedSegmentIndex)
        //获得选择的文字
        print(segmented.titleForSegment(at: segmented.selectedSegmentIndex) ?? segmented.selectedSegmentIndex)
    }
   
    func addUIImageView(){
        let imageView = UIImageView(image:UIImage(named:"1"))
        imageView.frame = CGRect(x:10,y:30,width:300,height:150)
        imageView.backgroundColor = UIColor .lightGray
        self.view.addSubview(imageView)
        //改变图片
        imageView.image = UIImage(named:"1")
        imageView.contentMode = .scaleAspectFit//保持图片比例
        
        //从文件目录获取图片
//        let path = Bundle.main.path(forResource: "other", ofType: "png")
//        let newImage = UIImage(contentsOfFile: path!)
//        let imageView = UIImageView(image:newImage)
//        self.view.addSubview(imageView)
    }
    
    func addProgressView() {
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.center = self.view.center
        progressView.progress = 0.5
        progressView.setProgress(0.8, animated: true)//设置进度，同时有动画效果
        progressView.progressTintColor = UIColor.red
        progressView.trackTintColor = UIColor.black
        self.view.addSubview(progressView)
    }
    //TODO:_didReceiveMemoryWarning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

