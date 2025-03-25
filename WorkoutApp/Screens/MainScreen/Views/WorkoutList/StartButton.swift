//
//  StartButton.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 18.03.2025.
//

import SwiftUI

struct StartButton: View {
    @State private var isComplete = false
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            isComplete = true
            action()
        }, label: {
            Text(isComplete ? "COMPLETE" : "START")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .font(.robotoBold16)
                .foregroundColor(Color(.systemBackground))
                .background(isComplete ? Color(.waBlack) : Color(.systemBlue))
                .cornerRadius(10)

        })
        .allowsHitTesting(!isComplete)
        .shadow(radius: 1, y: 2)
    }
}

#Preview {
    StartButton(action: {})
}
