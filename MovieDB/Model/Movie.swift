//
//  Movie.swift
//  MovieDB
//
//  Created by Ajeet Pratap Maurya on 19/12/17.
//  Copyright © 2017 Ajeet. All rights reserved.
//

import UIKit
import ObjectMapper

class Movie: Mappable {

    var id : Any?
    var title : String?
    var poster_path : String?
    var release_date : String?
    var overview : String?
    
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        
        id              <- map["id"]
        title           <- map["title"]
        poster_path     <- map["poster_path"]
        release_date    <- map["release_date"]
        overview        <- map["overview"]
    }
}
