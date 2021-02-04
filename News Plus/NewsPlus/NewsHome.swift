//
//  NewsHome.swift
//  NewsPlus
//
//  Created by Akash on 09/12/20.
//

import SwiftUI
struct NewsHome: View {
    @ObservedObject private var newsListVM = NewsListVM()
    @State private var  categoryIndex = 0
    private var categories = ["Technology" , "Business", "Entertainment", "Sports"]
    
    init() {
        newsListVM.load()
        
    }
    var body: some View {
        VStack {
            NewsListHeader()
            
            Section(header: Text("Select Category")) {
                Picker("", selection: $categoryIndex ) {
                    ForEach(0..<categories.count) {
                        Text("\(self.categories[$0])")
                    }
                }
            }
            .padding(.horizontal)
            .pickerStyle(SegmentedPickerStyle())
            
            NewsListView(newsCollection: self.newsListVM.news, imageData: self.newsListVM.imageData)
            
        }
        
    }
}
