//
//  ProfileHeaderView.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 30/12/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 20.0){
            VStack{
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 80))
                    .foregroundColor(Color.gray.opacity(0.3))
                Text("@lewis.hamilton")
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            HStack(spacing: 50.0){
                UserStatsView(number: "500", label: "Following")
                UserStatsView(number: "1.5M", label: "Followers")
                UserStatsView(number: "7.2M", label: "Likes")
            }
            
            Button(action: {}){
                Text("Edit Profile")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .frame(width: 370, height: 35)
                    .background(Color.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}


