//
//  FeedView.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 29/12/24.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var vm = FeedViewModel()
    @State private var scrollPosition : String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView{
            LazyVStack (spacing: 0){
                ForEach(vm.posts){ post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                }
            }
            .scrollTargetLayout()
        }
        .onAppear {
            player.play()
        }
        .scrollPosition(id : $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea(.all)
        .onChange(of: scrollPosition) { oldValue, newValue in
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
    }
    
    func playInitialVideoIfNecessary(){
        guard
            scrollPosition == nil,
            let post = vm.posts.first,
            player.currentItem == nil
        else { return }
        
        let item = AVPlayerItem(url: URL(string: post.videoUrl)!)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoOnChangeOfScrollPosition(postId: String?){
        guard let currentPost = vm.posts.first(where: { $0.id == postId }) else { return }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
               
    }
}

#Preview {
    FeedView()
}
