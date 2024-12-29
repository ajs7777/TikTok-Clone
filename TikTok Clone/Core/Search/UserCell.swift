//
//  UserCell.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 29/12/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 15.0){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundStyle(.gray.opacity(0.4))
            VStack(alignment: .leading) {
                Text("text_user")
                    .font(.headline)
                Text("tester")
                    .font(.callout)
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
