//
//  FeedCell.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 29/12/24.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    let post: Post
    
    var body: some View {
        ZStack{
            VideoPlayer(player: AVPlayer(url: URL(string: post.videoUrl)!))
                .containerRelativeFrame([.horizontal, .vertical])
            
            VStack{
                Spacer()
                HStack(alignment: .bottom){
                    VStack(alignment: .leading){
                        Text("Carlos.sainz")
                            .fontWeight(.semibold)
                        Text("Rocket ship prepare for take off 🚀🚀")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack(spacing: 20.0){
                        Circle()
                            .fill(Color.white)
                            .frame(width: 50, height: 50)
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .foregroundStyle(.white)
                                    .frame(width: 28, height: 26)
                                Text("20")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .foregroundStyle(.white)
                                    .frame(width: 28, height: 26)
                                Text("9")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .foregroundStyle(.white)
                                    .frame(width: 24, height: 29)
                                Text("")
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "arrowshape.turn.up.forward.fill")
                                    .resizable()
                                    .foregroundStyle(.white)
                                    .frame(width: 28, height: 26)
                                Text("")
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        
                        
                    }
                }
                .padding(.bottom, 80)
                
            }
            .padding()
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoUrl: ""))
}
