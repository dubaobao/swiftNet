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
    
    class func login(_ login:Login) -> LoginResult?{
        let JSONDictionary = login.toJSON()
        var loginResult: LoginResult? = nil
        Alamofire.request("https://stg.back.birdiz.com/api/v1/login", method: .post, parameters: JSONDictionary, encoding: URLEncoding.default).responseObject { (response: DataResponse<LoginResult>) in
            loginResult = response.result.value
        }
        return loginResult
    }
    
}
