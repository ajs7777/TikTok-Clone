//
//  FeedView.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 29/12/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<10){ post in
                    FeedCell(post: post)
                }
            }
            .scrollTargetLayout()
            
        }
        .scrollTargetBehavior(.paging)
            .ignoresSafeArea(.all)
    }
}

#Preview {
    FeedView()
}
