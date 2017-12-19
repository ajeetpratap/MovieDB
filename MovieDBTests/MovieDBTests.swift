//
//  MovieDBTests.swift
//  MovieDBTests
//
//  Created by Ajeet Pratap Maurya on 19/12/17.
//  Copyright © 2017 Ajeet. All rights reserved.
//

import XCTest
@testable import MovieDB

class MovieDBTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func fetchMoviesTest() {
        
        let expect = expectation(description: "fetch the list of movies matching the user search string.")
        
        //test with mock data
        let queryStr = "batman"
        let pageNo = 1
        
        let apiClient = MoviesAPIClient()
        apiClient.fetchMovies(for: queryStr,page: pageNo) { (result) in
            switch result {
            case .Success(let response) :
                //expectation is fullfilled if we get a list of movies
                XCTAssert(response.movies!.count > 0)
                expect.fulfill()
                break
            case .Error(let error) :
                //Test failed.
                XCTFail("Test Failed : \(error.message)")
                break
            default:
                break
            }
        }
        
        waitForExpectations(timeout: 10, handler: { _ in
            XCTFail("Timeout")
        })
    }
    
}
