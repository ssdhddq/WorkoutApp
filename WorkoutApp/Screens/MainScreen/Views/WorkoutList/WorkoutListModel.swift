//
//  WorkoutListModel.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 18.03.2025.
//

import SwiftUI

final class WorkoutListModel: ObservableObject {
    @Published var workouts: [Workout] = []
    
    init() {
        fillWorkouts()
    }
    
    private func fillWorkouts() {
        workouts = MockData.workoutToday
    }
    
    func getWorkout(at index: Int) -> Workout {
        return workouts[index]
    }
    
    func deleteWorkout(_ workout: Workout) {
        workouts.removeAll { $0.id == workout.id }
    }
}
