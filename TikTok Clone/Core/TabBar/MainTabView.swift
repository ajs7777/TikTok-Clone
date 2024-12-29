//
//  MainTabView.swift
//  TikTok Clone
//
//  Created by Abhijit Saha on 29/12/24.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Feed")
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        
                        Text("Home")
                    }
                }.tag(0)
                .onAppear { selectedTab = 0 }
            
            Text("Friends")
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        
                        Text("Friends")
                    }
                }.tag(1)
                .onAppear { selectedTab = 1 }
            
            Text("Upload Content")
                .tabItem {
                    VStack{
                        Image(systemName: "plus")
                    }
                }.tag(2)
                .onAppear { selectedTab = 2 }
            
            Text("Notifications")
                .tabItem {
                    VStack{
                        Image(systemName:  selectedTab == 3 ? "heart.fill" :  "heart")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        
                        Text("Inbox")
                    }
                }.tag(3)
                .onAppear { selectedTab = 3 }
            
            Text("Profile Page")
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        
                        Text("Profile")
                    }
                }.tag(4)
                .onAppear { selectedTab = 4 }
        }
        .tint(.black)
        
    }
}

#Preview {
    MainTabView()
}

