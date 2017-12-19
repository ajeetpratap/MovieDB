//
//  RestProtocol.swift
//  MovieDB
//
//  Created by Ajeet Pratap Maurya on 19/12/17.
//  Copyright © 2017 Ajeet. All rights reserved.
//

import Foundation

protocol RestProtocol {
     func fetchMovies(for query : String?,page : Int?,completionHandler: @escaping (Result<MovieMapper>) -> Void)
}
