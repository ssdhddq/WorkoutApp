//
//  StatisticsViewModel.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 25.03.2025.
//

import Foundation

final class StatisticsViewModel: ObservableObject {
    let workoutData: [(date: Date, minutes: Double)] = [
        (Calendar.current.date(byAdding: .day, value: -6, to: Date())!, 45),
        (Calendar.current.date(byAdding: .day, value: -5, to: Date())!, 30),
        (Calendar.current.date(byAdding: .day, value: -4, to: Date())!, 60),
        (Calendar.current.date(byAdding: .day, value: -3, to: Date())!, 25),
        (Calendar.current.date(byAdding: .day, value: -2, to: Date())!, 45),
        (Calendar.current.date(byAdding: .day, value: -1, to: Date())!, 50),
        (Date(), 40)
    ]
}
