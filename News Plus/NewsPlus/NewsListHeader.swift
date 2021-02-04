//
//  NewsListHeader.swift
//  NewsPlus
//
//  Created by Akash on 09/12/20.
//

import Foundation
import SwiftUI
struct NewsListHeader: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack {
                Image(systemName: "largecircle.fill.circle")
                Text("News")
                Image(systemName: "plus")
                Spacer()
            }
            .font(.largeTitle)
            Text("Top Headlines")
                .foregroundColor(.gray)
                .font(.largeTitle)
            
        }
        .padding(.horizontal)
        .padding(.vertical) }
}
