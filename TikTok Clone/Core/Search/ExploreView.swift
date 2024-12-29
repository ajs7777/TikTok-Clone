//
//  ExploreView.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 29/12/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 16){
                    ForEach(0..<10){ user in
                        UserCell()
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
        
    }
}

#Preview {
    ExploreView()
}
