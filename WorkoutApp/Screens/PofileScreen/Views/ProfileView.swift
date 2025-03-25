//
//  ProfileView.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 19.03.2025.
//

import SwiftUI

struct ProfileView: View {
    let user: User = MockData.mockUser
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(spacing: 16) {
                        Image(user.image)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color(.systemBlue), lineWidth: 2))
                        
                        Text(user.fullName)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Тренируется с \(viewModel.additionalData.startDate.formatted(.dateTime.month().year()))")
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Физические параметры")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        HStack {
                            ProfileCard(
                                icon: "ruler",
                                title: "Рост",
                                value: "\(user.height) см"
                            )
                            
                            ProfileCard(
                                icon: "scalemass",
                                title: "Вес",
                                value: "\(user.weight) кг"
                            )
                        }
                        
                        HStack {
                            ProfileCard(
                                icon: "figure.arms.open",
                                title: "Возраст",
                                value: "\(viewModel.additionalData.age) лет"
                            )
                            
                            ProfileCard(
                                icon: "chart.line.uptrend.xyaxis",
                                title: "ИМТ",
                                value: String(format: "%.1f", viewModel.calculateBMI(height: user.height, weight: user.weight))
                            )
                        }
                    }
                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(12)
                    .shadow(radius: 2)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Цель тренировок")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        HStack {
                            Image(systemName: "target")
                                .foregroundColor(.blue)
                            Text(viewModel.additionalData.goal)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(8)
                    }
                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(12)
                    .shadow(radius: 2)
                    
                    VStack(spacing: 12) {
                        Button(action: {

                        }) {
                            Label("Редактировать профиль", systemImage: "pencil")
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                        
                        Button(action: {
                            
                        }) {
                            Label("Настройки", systemImage: "gear")
                                .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                    }
                    .padding()
                }
                .padding()
            }
            .navigationTitle("Профиль")
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    ProfileView()
}
