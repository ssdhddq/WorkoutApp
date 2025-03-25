//
//  StatisticsView.swift
//  WorkoutApp
//
//  Created by SSDHDDQ on 19.03.2025.
//

import SwiftUI
import Charts

struct StatisticsView: View {
    @StateObject var viewModel = StatisticsViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Общая статистика")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        HStack {
                            StatCard(title: "Всего тренировок", value: "28")
                            StatCard(title: "Часов всего", value: "42")
                        }
                        
                        HStack {
                            StatCard(title: "Среднее время", value: "45 мин")
                            StatCard(title: "Текущая серия", value: "5 дней")
                        }
                    }
                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(12)
                    .shadow(radius: 2)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Активность за неделю")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Chart {
                            ForEach(viewModel.workoutData, id: \.date) { item in
                                BarMark(
                                    x: .value("День", item.date, unit: .day),
                                    y: .value("Минуты", item.minutes)
                                )
                                .foregroundStyle(Color.blue.gradient)
                            }
                        }
                        .frame(height: 200)
                    }
                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(12)
                    .shadow(radius: 2)
                }
                .padding()
            }
            .navigationTitle("Статистика")
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    StatisticsView()
}
