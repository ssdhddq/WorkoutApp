//
//  ContentView.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 14.03.2025.
//

import SwiftUI

struct MainScreenView: View {
    @StateObject var viewModel = MainScreenViewModel()
    
    var body: some View {
        ZStack {
            Color.wAbackground.ignoresSafeArea()
            
            VStack(alignment: .leading) {
                UserInfoView(userName: MockData.mockUser.fullName,
                             userImage: MockData.mockUser.image,
                             selectedDate: $viewModel.selectedDate)
                
                HStack {
                    AddWorkoutButton(viewModel: viewModel)
                    
                    WeatherView(status: "Солнечно",
                                description: "Хорошая погода для занятий на улице")
                }
                
                Text(TitleName.workoutToday.rawValue)
                    .titleModifier()
                    .padding(.top, 5)
                
                //Text("\(viewModel.selectedDate)")
                
                WorkoutList()
            }
            .padding(.horizontal, 10)
        }
        .sheet(isPresented: $viewModel.isShowingAddWorkoutView, content: {
            AddWorkoutView()
        })
    }
}

#Preview {
    MainScreenView()
}
