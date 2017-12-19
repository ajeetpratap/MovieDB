//
//  AppStore.swift
//  MovieDB
//
//  Created by Ajeet Pratap Maurya on 19/12/17.
//  Copyright © 2017 Ajeet. All rights reserved.
//

import UIKit

/// Manage for the application data.
class AppStore: NSObject {
    /// Manages searchs.
    private(set) var searchStore: RecentSearchStore!
    
    /// Factory of a data access objects.
    private let daoFactory = DAOFactory()
    
    /// Initialize the instance.
    override init() {
        super.init()
        self.searchStore = RecentSearchStore.init(daoFactory: daoFactory)
    }
}

