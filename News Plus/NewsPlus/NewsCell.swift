//
//  NewsCell.swift
//  NewsPlus
//
//  Created by Vinesh on 09/12/20.
//

import Foundation
import SwiftUI
struct NewsCell: View {
    let news: NewsViewModel
    let image: Image
    @State private var isPresented: Bool = false
    var body: some View {
        ZStack {
            Color(.gray)
                .cornerRadius(20)
                .opacity(0.25)
            VStack(alignment: .leading, spacing: 10){
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 450, height: 300 ,alignment: .center) .clipped()
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 5, x: 5, y: 5)
            Text(news.author)
                    .font(.subheadline)
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
            Text(news.title)
                    .font(.title)
//                    .foregroundColor(.black)
            Text(news.description)
                .font(.subheadline)
            }
            .padding(20)
            .sheet(isPresented: $isPresented) {
                NewsArticleWebView(newsUrl: self.news.url) }
            .onTapGesture { self.isPresented.toggle()
                
            }
            
        }
        
    }
    
}
