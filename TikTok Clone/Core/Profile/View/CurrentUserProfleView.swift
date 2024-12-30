//
//  CurrentUserProfleView.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 30/12/24.
//

import SwiftUI

struct CurrentUserProfleView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileHeaderView()
                PostGridView()
            }
            
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    CurrentUserProfleView()
}
