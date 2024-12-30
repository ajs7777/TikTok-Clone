//
//  FeedView.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 29/12/24.
//

import SwiftUI

struct FeedView: View {
    @StateObject var vm = FeedViewModel()
    var body: some View {
        ScrollView{
            LazyVStack (spacing: 0){
                ForEach(vm.posts){ post in
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
