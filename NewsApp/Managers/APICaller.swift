//
//  APICaller.swift
//  NewsApp
//
//  Created by Antonio Torres-Ruiz on 5/12/22.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    struct Constants {
        static let topHeadlinesURL = URL(string: "https://newsapi.org/v2/top-headlines?country=US&apiKey=")
    }
    
    private init() {
        
    }
}
