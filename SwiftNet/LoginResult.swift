//
//  LoginResult.swift
//  SwiftNet
//
//  Created by Cheng DU on 21/06/2017.
//  Copyright © 2017 Cheng DU. All rights reserved.
//

import Foundation
import ObjectMapper

class LoginResult: NSObject, Mappable{
    var userId: NSNumber?
    var roles: [String]?
    
    var token:String?
    var refreshToken: String?
    
    var formats: [Format]?
    
    var isClient: Bool?
    override init(){
        
    }
    required init?(map: Map) {
        
    }
    func mapping(map: Map) {
        token <- map["token"]
        userId <- map["data.id"]
        roles <- map["data.roles"]
        refreshToken <- map["refresh_token"]
        formats <- map["formats"]
    }
    
}
