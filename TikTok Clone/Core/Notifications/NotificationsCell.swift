//
//  NotificationsCell.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 29/12/24.
//

import SwiftUI

struct NotificationsCell: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .foregroundStyle(Color.gray.opacity(0.3))
                .frame(width: 40, height: 40)
            Text("max.verstappen").bold() +
            
            Text(" liked one of your posts whfsugsihgv skjhnvfhnf. ") +
            
            Text("3d")
                .font(.footnote)
                .foregroundStyle(.gray)
            Spacer()
            Rectangle()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 55, height: 55)
        }
        .font(.footnote)
        .padding(.horizontal)
    }
}

#Preview {
    NotificationsCell()
}
