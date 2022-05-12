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
        static let topHeadlinesURL = URL(string: "https://newsapi.org/v2/top-headlines?country=US&apiKey=\(APIKeys.NEWS_API_KEY)")
    }
    
    private init() {
        
    }
    
    public func getTopStories(completion: @escaping(Result<[Article], Error>) -> Void) {
        guard let url = Constants.topHeadlinesURL else { return }
        let task = URLSession.shared.dataTask(with: url, completionHandler: { data, _, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    completion(.success(result.articles))
                } catch {
                    completion(.failure(error))
                }
            }
        })
        task.resume()
    }
}
