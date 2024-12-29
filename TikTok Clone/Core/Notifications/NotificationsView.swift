//
//  NotificationsView.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 29/12/24.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack (spacing: 25) {
                    ForEach(0..<9){ notification in
                        NotificationsCell()
                    }
                }
            }
            .navigationTitle("Notification")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotificationsView()
}
