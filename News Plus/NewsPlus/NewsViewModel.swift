//
//  NewsViewModel.swift
//  NewsPlus
//
//  Created by Akash on 09/12/20.
//

import Foundation
struct NewsViewModel{
    let news: News
    var author: String {
        return news.author ?? "Unknown" }
    var description: String {
        return news.description ?? ""
        
    }
    var title: String {
        return news.title ?? "" }
    var url: String {
        return news.url ?? ""
        
    }
    var urlToImage: String {
        return news.urlToImage ?? "" }
}

