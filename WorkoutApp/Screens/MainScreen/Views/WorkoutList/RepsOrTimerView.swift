//
//  RepsOrTimerView.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 19.03.2025.
//

import SwiftUI

struct RepsOrTimerView: View {
    @State private var title = ""
    let workout: Workout
    
    var body: some View {
        Text(title)
            .font(.roboto16)
            .foregroundStyle(.waBlack)
            .onAppear {
                if workout.timer == 0 {
                    title = "Reps: \(workout.reps)"
                } else {
                    title = "Timer: \(workout.timer.toMinSecFormat())"
                }
            }
    }
}

#Preview {
    RepsOrTimerView(workout: MockData.workoutToday[0])
}

//Text("Reps: \(workout.reps)")
