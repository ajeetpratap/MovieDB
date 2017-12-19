//
//  RecentSearchCache.swift
//  MovieDB
//
//  Created by Ajeet Pratap Maurya on 19/12/17.
//  Copyright © 2017 Ajeet. All rights reserved.
//

import UIKit


/// Manager fot the book data.
class RecentSearchCache: NSObject {
    /// A collection of author names.
    var searchNames = Array<String>()
    
    /// Initialize the instance.
    override init() {
        super.init()
    }
    
  
    init(searchs: Array<RecentSearch>) {
        super.init()
        
        searchs.forEach { (search) in
            if !self.add(search : search){
                print("Failed to add Search : \(search.searchName)")
            }
        }
      
    }
    
    //add search
    func add(search: RecentSearch,wasRemoved : Bool = false) -> Bool {
            var newSearch = Array<RecentSearch>()
            newSearch.append(search)
        if wasRemoved {
            self.searchNames.insert(search.searchName, at: 0)
        }else{
            self.searchNames.append(search.searchName)
        }
        
        return true
    }
    
    //remove search
    func remove(search: RecentSearch) -> Bool {
        for i in 0..<self.searchNames.count {
            let existSearch = self.searchNames[i]
            if existSearch == search.searchName {
                self.searchNames.remove(at: i)
                return true
            }
        }
        return false
    }
  
}

