//
//  Result.swift
//  MovieDB
//
//  Created by Ajeet Pratap Maurya on 19/12/17.
//  Copyright © 2017 Ajeet. All rights reserved.
//

import UIKit

enum Result<T> {
    case Success(T)
    case Error(RestError)
    case JSONParsingFailure()
}

