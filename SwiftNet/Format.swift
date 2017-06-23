//
//  Format.swift
//  SwiftNet
//
//  Created by Cheng DU on 21/06/2017.
//  Copyright © 2017 Cheng DU. All rights reserved.
//

import Foundation
import ObjectMapper

class Format: NSObject, Mappable{
    var hydraID: String?
    var formatId: NSNumber?
    var name: String?
    var desc: String?
    var length: String?
    var width: String?
    var height: String?
    var weight: String?
    var depth: String?
    
    
    required init?(map: Map) {
        
    }
    func mapping(map: Map) {
        formatId <- map["id"]
        desc <- map["descrription"]
        name <- map["format"]
        width <- map["width"]
        height <- map["height"]
        depth <- map["depth"]
    }
}
