//
//  Login.swift
//  SwiftNet
//
//  Created by Cheng DU on 21/06/2017.
//  Copyright © 2017 Cheng DU. All rights reserved.
//

import Foundation
import ObjectMapper

@objc class Login: NSObject, Mappable{
    var email:String?
    var password:String?
    
    
    required init?(map: Map) {
        
    }
    override init() {
        
    }
    func mapping(map: Map) {
        email <- map["email"]
        password <- map["password"]
    }
}
