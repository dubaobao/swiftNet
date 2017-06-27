//
//  LoginManager.swift
//  SwiftNet
//
//  Created by Cheng DU on 22/06/2017.
//  Copyright © 2017 Cheng DU. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class LoginManager: NSObject{
    
class func login(_ login:Login,
                     completionHandler: @escaping(Bool, LoginResult?, Error?, NSNumber?) ->Void) -> Void{
        let JSONDictionary = login.toJSON()
        Alamofire.request("https://stg.back.birdiz.com/api/v1/login", method: .post, parameters: JSONDictionary, encoding: URLEncoding.default).validate(statusCode: 200..<300).responseObject { (response: DataResponse<LoginResult>) in
            
            if let loginResult = response.result.value{
                completionHandler(true, loginResult, nil, nil)
            }
            else{
                completionHandler(false, nil, response.error as? AFError, (response.error as? AFError)?.responseCode as NSNumber?)
            }
        }
    }
}
