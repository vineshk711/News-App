//
//  NewsListView.swift
//  NewsPlus
//
//  Created by Akash on 09/12/20.
//

import Foundation
import SwiftUI
struct NewsListView: View {
    let newsCollection: [NewsViewModel]
    let imageData: [String: Data]
    var body: some View{
        List(self.newsCollection, id: \.url) { news in
            NewsCell(news: news, image: Image(uiImage: self.imageData[news.urlToImage] == nil ? UIImage(systemName: "doc.append")! : UIImage(data: self.imageData[news.urlToImage]!)!)) }
        
    }
    
}
