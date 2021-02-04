//
//  NewsArticleWebView.swift
//  NewsPlus
//
//  Created by Akash on 09/12/20.
//

import Foundation
import SwiftUI
struct NewsArticleWebView: View {
    var newsUrl: String
    var body: some View{
        SwiftUIWebView(urlString: newsUrl)
            .padding(.top,20)
            .padding()
            .background(Color.white)
        
    }
    
}
