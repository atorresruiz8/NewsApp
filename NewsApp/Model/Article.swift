//
//  Article.swift
//  NewsApp
//
//  Created by Antonio Torres-Ruiz on 5/12/22.
//

import Foundation

struct Article: Codable {
    let source: Source
    let title: String
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}
