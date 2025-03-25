//
//  WorkoutList.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 18.03.2025.
//

import SwiftUI

struct WorkoutList: View {
    @StateObject var viewModel = WorkoutListModel()
    @State private var selectedWorkout: Workout?
    
    var body: some View {
        List {
            ForEach(viewModel.workouts) { workout in
                WorkoutListCell(workout: workout, isSelected: workout == selectedWorkout)
                    .frame(maxWidth: .infinity)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                    .listRowSpacing(8)
                    .swipeActions(edge: .trailing) {
                        Button(role: .destructive) {
                            withAnimation {
                                viewModel.deleteWorkout(workout)
                            }
                        } label: {
                            Image("delete")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        }
                        .tint(.clear)
                    }
            }
        }
        .listStyle(.plain)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    WorkoutList()
}
