//
//  Constants.swift
//  MovieDB
//
//  Created by Ajeet Pratap Maurya on 19/12/17.
//  Copyright © 2017 Ajeet. All rights reserved.
//

import UIKit


let BASE_IMAGE_URL = "https://image.tmdb.org/t/p/w92/"

enum NotificationName: String {
    case moviesLoaded = "moviesLoaded"
    case loadingError = "loadingError"
}
struct API_URLs {
    static let searchMovie = "https://api.themoviedb.org/3/search/movie?api_key=2696829a81b1b5827d515ff121700838"
}

