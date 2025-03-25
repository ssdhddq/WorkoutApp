//
//  AddWorkoutViewModel.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 25.03.2025.
//

import Foundation

final class AddWorkoutViewModel: ObservableObject {
    @Published var workoutName = ""
    @Published var workoutType: WorkoutType = .reps
    @Published var reps = 10
    @Published var sets = 3
    @Published var minutes = 0
    @Published var seconds = 30
    @Published var selectedIcon = "pushups"
    
    let availableIcons = ["pushups", "situp", "plank"]
    
    var isValid: Bool {
        !workoutName.isEmpty && selectedIcon != ""
    }
    
    func saveWorkout() {
        print("Сохранение тренировки")
    }
}
