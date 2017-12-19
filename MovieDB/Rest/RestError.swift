//
//  ServiceError.swift
//  MovieDB
//
//  Created by Ajeet Pratap Maurya on 19/12/17.
//  Copyright © 2017 Ajeet. All rights reserved.
//

import UIKit

class RestError: Error {
    public var code: Int = -1
    public var message: String = "Unknown error occurred."
    
    public init(code: Int, message: String)
    {
        self.code = code
        self.message = message
    }
    
}
