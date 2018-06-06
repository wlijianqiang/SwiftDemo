//
//  TJSNetHttpTool.swift
//  SwiftDemo
//
//  Created by lijianqiang on 2017/6/8.
//  Copyright © 2017年 STV. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

private let NetworkRequestShareInstance = TJSNetHttpTool()

var baseUrl = "https://www.baidu.com"
enum MethodType {
    case get
    case post
}

class TJSNetHttpTool {
    class var shareInstance: TJSNetHttpTool {
        return NetworkRequestShareInstance
    }
  }

extension TJSNetHttpTool{
   //MARK: _GET 请求
   //let tools:TJSNetHttpTool.shareInstance!
    func getRequest(urlString: String,params : [String : Any]?,success : @escaping (_ respone : [String : AnyObject])->(),failture : @escaping (_ error : Error)->()){
        
        var  URLStr = ""
        if urlString.hasPrefix("http") || urlString.hasPrefix("https") {
            URLStr = urlString
        }else{
            URLStr = "\(baseUrl)" + urlString
        }

        Alamofire.request(URLStr, method: .get, parameters: params, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in//使用了闭包,请求后response是自定义的，用于接收服务器响应的信息
            print("GET_\(String(describing: response.response))\(String(describing: response.result.value))")
            switch response.result {
            case .success(let value)://网络请求时，都是通过getRequest 传入的，而success传入的其实是一个接收[String : AnyObject]类型 返回void类型的函数
                success(value as! [String : AnyObject])
                break
                
            case .failure(let error):
                failture(error)
                break
            }
        }
    }
    //MARK: _POST 请求
    func postRequest(urlString : String, params : [String : Any]?, success : @escaping (_ respone : [String : AnyObject])->(),failture : @escaping (_ error : Error)->()){
        
        var  URLStr = ""
        if urlString.hasPrefix("http") || urlString.hasPrefix("https") {
            URLStr = urlString
        }else{
            URLStr = "\(baseUrl)" + urlString
        }
        
        Alamofire.request(URLStr, method: .post, parameters: params, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            print("POST_\(String(describing: response.response))\(String(describing: response.result.value))")
            switch response.result{
            case.success(let value):
                success(value as! [String : AnyObject])
                break
            case.failure(let error):
                failture(error)
                break
            }
        }
    }
    //MARK: _响应式请求
    func requestDatad(_ type: MethodType, urlString : String, parameters : [String : Any]? = nil, success : @escaping (_ respone : [String : AnyObject])->(),failture : @escaping (_ error : Error)->()){
        var  URLStr = ""
        if urlString.hasPrefix("http") || urlString.hasPrefix("https") {
            URLStr = urlString
        }else{
            URLStr = "\(baseUrl)" + urlString
        }
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post//默认选择为get请求
        Alamofire.request(URLStr, method: method, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            print("\(type)_\(response.response)\(response.result.value)")
            switch response.result{
            case.success(let value):
                success(value as! [String : AnyObject])
                break
            case.failure(let error):
                failture(error)
                break
            }
        }
    }

}

