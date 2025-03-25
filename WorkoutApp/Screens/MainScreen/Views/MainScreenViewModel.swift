//
//  MainScreenViewModel.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 18.03.2025.
//

import SwiftUI

final class MainScreenViewModel: ObservableObject {
    @Published var selectedDate : Date?
    @Published var isShowingAddWorkoutView: Bool = false
}
