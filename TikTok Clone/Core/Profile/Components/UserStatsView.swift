//
//  UserStatsView.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 30/12/24.
//

import SwiftUI

struct UserStatsView: View {
    
    let number: String
    let label: String
    
    var body: some View {
        VStack {
            Text(number)
                .font(.headline)
                .fontWeight(.bold)
            Text(label)
                .font(.subheadline)
                .foregroundStyle(.gray)
            
        }
    }
}

#Preview {
    UserStatsView(number: "500", label: "Follwing")
}
