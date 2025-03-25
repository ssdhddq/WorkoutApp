//
//  AddWorkoutView.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 19.03.2025.
//

import SwiftUI

struct AddWorkoutView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel = AddWorkoutViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Основная информация") {
                    TextField("Название тренировки", text: $viewModel.workoutName)
                    
                    Picker("Тип тренировки", selection: $viewModel.workoutType) {
                        ForEach(WorkoutType.allCases, id: \.self) { type in
                            Text(type.rawValue).tag(type)
                        }
                    }
                }
                
                Section("Параметры") {
                    if viewModel.workoutType == .reps {
                        Stepper("Повторения: \(viewModel.reps)", value: $viewModel.reps, in: 1...100)
                    } else {
                        HStack {
                            Text("Время:")
                            Spacer()
                            TimePicker(minutes: $viewModel.minutes, seconds: $viewModel.seconds)
                        }
                    }
                    
                    Stepper("Подходы: \(viewModel.sets)", value: $viewModel.sets, in: 1...10)
                }
                
                Section("Иконка") {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(viewModel.availableIcons, id: \.self) { icon in
                                Image(icon)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .padding(8)
                                    .background(
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(viewModel.selectedIcon == icon ? 
                                                 Color(.systemGray5) : Color(.systemBackground))
                                    )
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color(.systemGray4), lineWidth: 1)
                                    )
                                    .onTapGesture {
                                        viewModel.selectedIcon = icon
                                    }
                            }
                        }
                        .padding(.vertical, 8)
                    }
                }
            }
            .navigationTitle("Новая тренировка")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Отмена") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Сохранить") {
                        viewModel.saveWorkout()
                        dismiss()
                    }
                    .disabled(!viewModel.isValid)
                }
            }
        }
    }
}

struct TimePicker: View {
    @Binding var minutes: Int
    @Binding var seconds: Int
    
    var body: some View {
        HStack {
            Picker("Минуты", selection: $minutes) {
                ForEach(0...59, id: \.self) { minute in
                    Text("\(minute)").tag(minute)
                }
            }
            .frame(width: 50)
            Text("мин")
            
            Picker("Секунды", selection: $seconds) {
                ForEach(0...59, id: \.self) { second in
                    Text("\(second)").tag(second)
                }
            }
            .frame(width: 50)
            Text("сек")
        }
    }
}

#Preview {
    AddWorkoutView()
}
