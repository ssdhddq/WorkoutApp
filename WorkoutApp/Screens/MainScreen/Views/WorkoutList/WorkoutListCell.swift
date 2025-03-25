//
//  WorkoutListCell.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 18.03.2025.
//

import SwiftUI

struct WorkoutListCell: View {
    let workout: Workout
    var isSelected: Bool
    @State private var viewMetrics = ViewMetrics()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemBackground))
                .shadow(radius: 2)
            
            HStack(spacing: viewMetrics.edgesOffset) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color(.systemGray6))
                        .frame(width: viewMetrics.heightImage, height: viewMetrics.heightImage)
                    
                    Image(workout.image)
                        .background(Color(.systemBackground))
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(workout.name)
                        .font(.roboto22)
                        .foregroundStyle(Color(.label))
                        .fontWeight(.bold)
                    
                    HStack(spacing: viewMetrics.edgesOffset) {
                        RepsOrTimerView(workout: workout)
                        
                        Text("Sets: \(workout.sets)")
                            .font(.roboto16)
                            .foregroundStyle(Color(.secondaryLabel))
                    }
                    
                    StartButton(action: {
                        print("Start button tapped")
                    })
                }
                .padding(.top, viewMetrics.edgesOffset)
                .padding(.bottom, viewMetrics.edgesOffset)
            }
            .minimumScaleFactor(0.7)
            .padding(.horizontal, viewMetrics.edgesOffset)
        }
        .frame(height: viewMetrics.heightCell)
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
        .background(Color(.systemBackground))
        .cornerRadius(12)
    }
    
    struct ViewMetrics {
        let edgesOffset: CGFloat = 10
        let heightImage: CGFloat = 85
        let heightCell: CGFloat = 100
    }
}

#Preview {
    WorkoutListCell(workout: MockData.workoutToday[0], isSelected: true)
}
