//
//  WorkoutTabView.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 19.03.2025.
//

import SwiftUI

struct WorkoutTabView: View {
    var body: some View {
        TabView {
            MainScreenView()
                .tabItem({
                    Label("Main", systemImage: "list.clipboard.fill")
                })
            
            StatisticsView()
                .tabItem({
                    Label("Statistics", systemImage: "chart.bar.fill")
                })
            
            ProfileView()
                .tabItem({
                    Label("Profile", systemImage: "person.fill")
                })
        }
        .tint(Color(.systemBlue))
    }
}

#Preview {
    WorkoutTabView()
}
