//
//  ProfileViewModel.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 25.03.2025.
//

import Foundation

final class ProfileViewModel: ObservableObject {
    let additionalData = AdditionalUserData(
        age: 28,
        goal: "Набор мышечной массы",
        startDate: Calendar.current.date(byAdding: .month, value: -3, to: Date())!
    )
    
    func calculateBMI(height: Int, weight: Int) -> Double {
        let heightInMeters = Double(height) / 100
        return Double(weight) / (heightInMeters * heightInMeters)
    }
}
