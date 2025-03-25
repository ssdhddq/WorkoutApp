//
//  Workout.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 18.03.2025.
//

import Foundation

struct Workout: Identifiable, Equatable {
    let id: UUID = UUID()
    let name: String
    let reps: Int
    let timer: Int
    let sets: Int
    let date: Date
    let image: String
    let isComplete: Bool
}
